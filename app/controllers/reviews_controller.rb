class ReviewsController < ApplicationController

  def new
    @review = Campaign.find(params[:campaign_id])
    @donation = Donation.new
    authorize @donation
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    # @review.campaign = Campaign.find(params[:campaign_id])
    authorize @review
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment, :star)
  end
end
