class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show; end

  def new
    @campaign = Campaign.new
  end
  
  def create 
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end
  
  def edit; end

  def update
    @campaign.update(campaign_params)
    redirect_to campaign_path(@campaign)
  end

  private
  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:name, :description, :category, :total, :photo)
  end
  
end
