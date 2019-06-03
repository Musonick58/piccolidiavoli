class Service::FtpService

  attr_accessor :ftp
  #my_ftp=Service::FtpService.new(::DEFAULT_FTP_HOST,::DEFAULT_FTP_USER,::DEFAULT_FTP_PASS)
  def initialize(host = nil,user = nil, pass = nil)
    @ftp = Net::FTP.new(::DEFAULT_FTP_HOST,::DEFAULT_FTP_USER,::DEFAULT_FTP_PASS)
    @ftp.passive = true
  end

  #upload(file,path) 
  #path = "public/ogimage.jpeg"
  #file = File.open(path)
  #ftp = Service::FtpService.new
  #ftp.upload(file,path)
  def upload(file,path) 
    folder = path.split("/")
    filename = folder[-1]
    folder[-1] = nil
    folder = folder.compact
    folder.each{|folder|
      @ftp.mkdir(folder) unless self.exist?(folder)
      @ftp.chdir(folder)
    }
    @ftp.putbinaryfile(file)
    status = self.exist?(filename)
    @ftp.chdir("/")
    return status
  end

  #
  #path = "public/ogimage.jpeg"
  #ftp = Service::FtpService.new
  #ftp.download(path)
  def download(key)
    folder = key.split("/")
    filename = folder[-1]
    folder[-1] = nil
    folder = folder.compact
    folder.each{|folder|
      @ftp.chdir(folder) if self.exist?(folder)
      raise "this folder doesn't exist: #{folder}" unless self.exist?(folder)
    }
    file = @ftp.getbinaryfile(filename,nil)
    @ftp.chdir("/")
    return file
  end

  def delete(key)
    folder = key.split("/")
    filename = folder[-1]
    folder[-1] = nil
    folder = folder.compact
    folder.each{|folder|
      @ftp.chdir(folder) #if self.exist?(folder)
    }
    begin
      @ftp.delete(filename) 
    rescue
      @ftp.chdir("/")
      return false
    end
    @ftp.chdir("/")
    return true
  end

  def exist?(key)
    return false if @ftp.list(key).empty?
    return true
  end

end