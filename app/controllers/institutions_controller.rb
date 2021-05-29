class InstitutionsController < ApplicationController
  before_action :set_institution, only: [ :show, :edit, :update, :destroy ]

  def index
    @institutions = policy_scope(Institution)
  end

  def show; end

  def new
    @institution = Institution.new
    authorize @institution
  end

  def create
    @institution = Institution.new(institution_params)
    authorize @institution
    @institution.user = current_user
    if @institution.save
      redirect_to institution_path(@institution)
    else
      render :new
    end
  end


  def edit;end

  def update
    @institution.update(institution_params)
    redirect_to institution_path(@institution)
  end

  def destroy
    @institution.destroy
    redirect_to institution_path
  end

  private
  def set_institution
    @institution = Institution.find(params[:id])
    authorize @institution
  end

  def institution_params
    params.require(:institution).permit(:name, :cnpj, :address, :description, :photos)
  end
end
