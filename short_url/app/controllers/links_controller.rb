class LinksController < ApplicationController
	def new

		@link = Link.new
	end
	def create
		@link = Link.new(params[:link])
		#@link.save
		redirect_to :action => :show , :id =>1
	end
	

end
