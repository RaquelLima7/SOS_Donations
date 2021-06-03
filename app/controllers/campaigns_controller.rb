class CampaignsController < ApplicationController
  def index
    if params[:category]
      @campaigns = Campaign.where(category: params[:category])
    else
      @campaigns = Campaign.all
    end
  end

  def show; end

  def new
    @campaign = Campaign.new
    authorize @campaign
  end
  
  def create 
    @campaign = Campaign.new(campaign_params)
    authorize @campaign
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
    authorize @campaign
  end

  def campaign_params
    params.require(:campaign).permit(:name, :description, :category, :total, :photo)
  end
end
