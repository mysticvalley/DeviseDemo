class ReviewsController < ApplicationController
	
	before_filter :find_destination
  before_filter :authenticate_user!
	
	# POST /destinations/:destination_id/reviews
	def create
		@review = @destination.reviews.create(params[:review])
		
		redirect_to destination_path(@destination)
	end

	private

	def find_destination
		@destination = Destination.find(params[:destination_id])	
	end
end

