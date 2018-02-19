class ReviewsController < ApplicationController
  before_action :set_restaurant
  def new
    @review = Review.new
  end

  def create
     @review = Review.new(review_params)
     @review.save
     redirect_to @restaurant
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end

end
