class CampersController < ApplicationController
  before_action :set_camper, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campers = Camper.all
    @models = Rvmodel.all
    @makes = Make.all
    respond_with(@campers)
  end

  def show
    respond_with(@camper)
  end

  def new
    @camper = Camper.new
    respond_with(@camper)
  end

  def edit
  end

  def create
    @camper = Camper.new(camper_params)
    @camper.save
    respond_with(@camper)
  end

  def update
    @camper.update(camper_params)
    respond_with(@camper)
  end

  def destroy
    @camper.destroy
    respond_with(@camper)
  end

  private
    def set_camper
      @camper = Camper.find(params[:id])
    end

    def camper_params
      params.require(:camper).permit(:year, :vin, :mileage, :customer_id, :make_id, :rvmodel_id)
    end
end
