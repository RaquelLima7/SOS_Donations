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
    @campaign = Campaign.find(params[:campaign_id])
    @campaign.raised += @donation.quantity
    if @campaign.raised >= @campaign.total && @campaign.accountabilities.empty?
      @accountability = Accountability.new
      @accountability.campaign = @campaign
      @accountability.save
    end

    authorize @donation
    authorize @campaign
    if @donation.save && @campaign.save
      redirect_to dashboard_path(results_query: 'donations')
    else
      render :new
    end
  end

  private
  def donation_params
    params.require(:donation).permit(:quantity)
  end

end
