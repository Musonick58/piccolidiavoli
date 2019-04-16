class ApplicationController < ActionController::Base
	before_action :add_view

	def add_view
		siteview=Siteview.find_or_initialize_by(:ip => request.remote_ip.to_s)
		siteview.save
		@visualizzazioni = Siteview.count
	end

end
