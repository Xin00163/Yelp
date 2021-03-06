class ReviewsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    # @restaurant = Restaurant.new(restaurant_params)
    # @restaurant.user = current_user

    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    @review.user = current_user
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
