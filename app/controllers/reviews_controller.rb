class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end
end
