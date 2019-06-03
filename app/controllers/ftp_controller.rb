class FtpController < ApplicationController
  before_action :init_ftp
  
  def index
    @results = @ftp.ftplist("/").map{|ls|
      ls.split(" ")[-1]
    }
  end

  def show
    path = params[:id]
    #debugger
    return download(path) if path.match(/\./) != nil
    @ftp.ftp.chdir(path)
    @results = @ftp.ftp.list(".").map{|ls|
      ls.split(" ")[-1]
    }
  end

  def download(file)
    file = @ftp.ftp.getbinaryfile(filename,nil)
    return send_data file
  end

  def upload
  end

  def list
  end

  def init_ftp
    @ftp = Service::FtpService.new(::DEFAULT_FTP_HOST,::DEFAULT_FTP_USER,::DEFAULT_FTP_PASS)
  end


end
