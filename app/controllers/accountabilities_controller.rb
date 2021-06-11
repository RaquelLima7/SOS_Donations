class AccountabilitiesController < ApplicationController

  def show
    @accountability = Accountability.find(params[:id])
    @campaign = @accountability.campaign
    @reviews = @accountability.reviews
    authorize @accountability
  end

  def new
    @accountability = Accountability.new
    authorize @accountability
  end

  def create
    @accountability = Accountability.new(accontability_params)
    authorize @accountability
    @accountability.user = current_user
    if @accountability.save
      redirect_to accontability_path(@accountability)
    else
      render :new
    end
  end

  private
  def accontability_params
    params.require(:accontability).permit(:content, :photos)
  end

end
