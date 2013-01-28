class PhotosController < ApplicationController

	def index
		@photos = Photo.all
		@max = @photos.size
	end

	def new
	end
	
	def create
		@photo = Photo.new
		@photo.title = params[:title]
		@photo.url = params[:url]
		@photo.caption = params[:caption]
		@photo.save
		flash[:info] = "You've added a photo!"
		redirect_to photos_path
	end
	
	def show
		@photos = Photo.all
		@photo = Photo.find_by_id(params[:id])
		@photoIndex = @photos.index(@photo)
		@num = @photos.count
	end
	
	def edit
		@photo = Photo.find_by_id(params[:id])
	end
	
	def update
		@photo = Photo.find_by_id(params[:id])
		@photo.title = params[:title]
		@photo.url = params[:url]
		@photo.caption = params[:caption]
		@photo.save
		flash[:info] = "You've updated photo " + params[:id] + "!"
		redirect_to photos_path
	end
	
	def destroy
		@photo = Photo.find_by_id(params[:id])
		@photo.destroy
		flash[:info] = "Photo " + params[:id] + " has been removed!"
		redirect_to photos_path
	end
	
end