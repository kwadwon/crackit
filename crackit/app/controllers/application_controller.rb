class ApplicationController < ActionController::Base
  protect_from_forgery


	def after_sign_in_path_for(resource)

		redirect_to(:action => "show")
		return
	end
		respond_to do |format|
    	show.html 
	end
end
