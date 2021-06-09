class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update]

  def index
    @campaigns = Campaign.all
    @campaigns = @campaigns.where(institution_id: params[:institution_id]) if params[:institution_id]
    @campaigns = @campaigns.where(category: params[:category]) if params[:category]
    @campaigns = @campaigns.where(type_donation: params[:type_donation]) if params[:type_donation]
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
    if @campaign.type_donation == "Volunteer"
      @donation_verb = "Volunteer"
    else
      @donation_verb = "Donate"
    end
    authorize @campaign
  end

  def campaign_params
    params.require(:campaign).permit(:name, :description, :category, :total, :photo)
  end
end
