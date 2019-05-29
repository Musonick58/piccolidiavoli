class ApplicationController < ActionController::Base
	before_action :https, :add_view, :set_title_and_description

	def add_view
		siteview=Siteview.find_or_initialize_by(:ip => request.remote_ip.to_s)
		siteview.save
		@visualizzazioni = Siteview.count
	end

	def https
		return nil if Rails.env.development?
		return redirect_to(:protocol => "https://", request.original_url.gsub("http://","https://"), :status => 301) if request.original_url["http://"]
	end

	def set_title_and_description
		@title = "Piccoli Diavoli 3 Route - PD3R"
		@description = "Piccoli Diavoli 3 Ruote è una ASD presente nel circuito paraciclistico"
		@current_url = request.original_url
	end

end
