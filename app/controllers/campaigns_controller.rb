class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update]

  def index
    if params[:category]
      @campaigns = Campaign.where(category: params[:category])
    elsif params[:type_donation]
      @campaigns = Campaign.where(type_donation: params[:type_donation])
    else
      @campaigns = Campaign.all
    end
  end

  def show; end

  def new
    @institution = Institution.find(params[:institution])
    @campaign = Campaign.new
    authorize @campaign
  end
  

  def create 
    raise
    @campaign = Campaign.new
    @campaign.institution = current_user
    @campaign.institution = Institution.find(params[:institution_id])
    authorize @campaign
    if @campaign.save
      redirect_to campaign_path(results_query: 'campaigns')
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
