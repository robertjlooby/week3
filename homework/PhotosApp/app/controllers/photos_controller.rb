class PhotosController < ApplicationController

	def index
		@photos = Photo.all
		@max = @photos.size
	end

	def new
		@photo = Photo.new
	end
	
	def create
		@photo = Photo.create(params[:photo])
		redirect_to photo_path(@photo.id)
	end
	
	def show
		@photos = Photo.all
		@photo = Photo.find_by_id(params[:id])
		if @photo == nil then
			flash[:info] = "Invalid photo ID #{params[:id]}!"
			redirect_to photos_path
		end
		@photoIndex = @photos.index(@photo)
		@num = @photos.count
	end
	
	def edit
		@photo = Photo.find_by_id(params[:id])
	end
	
	def update
		@photo = Photo.find_by_id(params[:id])
		@photo.update_attributes(params[:photo])
		redirect_to photo_path(params[:id])
	end
	
	def destroy
		@photo = Photo.find_by_id(params[:id])
		@photo.destroy
		flash[:info] = "Photo " + params[:id] + " has been removed!"
		redirect_to photos_path
	end
	
end
