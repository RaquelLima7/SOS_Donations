class DonationsController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @donation = Donation.new
    authorize @donation
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    @donation.campaign = Campaign.find(params[:campaign_id])
    authorize @donation
    if @donation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private
  def donation_params
    params.require(:donation).permit(:quantity)
  end

end
