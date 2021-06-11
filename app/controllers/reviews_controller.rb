class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @donation = Donation.find(params[:donation_id])
    @accountability = Accountability.find(params[:accountability_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.donation = Donation.find(params[:donation_id])
    @review.accountability = Accountability.find(params[:accountability_id])
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
