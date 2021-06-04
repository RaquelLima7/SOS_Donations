class AccountabilitiesController < ApplicationController

  def show
    @accontability = Accontability.find(params[:id])
    @campaign = Campaign.find(params[:id])
    @review = Review.find(params[:id])
    authorize @accontability
  end

  def new
    @accontability = Accontability.new
    authorize @accontability
  end

  def create
    @accontability = Accontability.new(accontability_params)
    authorize @accontability
    @accontability.user = current_user
    if @accontability.save
      redirect_to accontability_path(@accontability)
    else
      render :new
    end
  end

  private
  def accontability_params
    params.require(:accontability).permit(:content, :photos)
  end

end
