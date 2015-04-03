class RvmodelsController < ApplicationController
  before_action :set_rvmodel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rvmodels = Rvmodel.all
    respond_with(@rvmodels)
  end

  def show
    respond_with(@rvmodel)
  end

  def new
    @rvmodel = Rvmodel.new
    respond_with(@rvmodel)
  end

  def edit
  end

  def create
    @rvmodel = Rvmodel.new(rvmodel_params)
    @rvmodel.save
    respond_with(@rvmodel)
  end

  def update
    @rvmodel.update(rvmodel_params)
    respond_with(@rvmodel)
  end

  def destroy
    @rvmodel.destroy
    respond_with(@rvmodel)
  end

  private
    def set_rvmodel
      @rvmodel = Rvmodel.find(params[:id])
    end

    def rvmodel_params
      params.require(:rvmodel).permit(:modelname, :make_id)
    end
end
