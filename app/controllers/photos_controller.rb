class PhotosController < ApplicationController
	def index
		@photos = InstaPhoto.all.page(1).per(2)
		@total_page = InstaPhoto.count/2 + 1
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def update

	end
end
