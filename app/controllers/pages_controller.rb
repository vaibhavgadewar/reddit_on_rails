class PagesController < ApplicationController
	def index
		params[:per_page] ||= 10
		params[:page]     ||= 1
		@links = Link.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
	end
end
