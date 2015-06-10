class PagesController < ApplicationController
	def index
		params[:per_page] ||= 5
		params[:page]     ||= 1
		@links = Link.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
	end
end
