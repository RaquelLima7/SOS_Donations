class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update]

  def index
    if params[:category]
      @campaigns = policy_scope(Campaign).where(category: params[:category])
    else
      @campaigns = policy_scope(Campaign)
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
    @campaign.institution == current_user
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
