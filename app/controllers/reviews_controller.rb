class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
  end

  def destroy
    @review = Review.find(params[:id])
    restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(restaurant)
  end

private
  
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
  end

end
