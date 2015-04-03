class MakesController < ApplicationController
  before_action :set_make, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @makes = Make.all
    respond_with(@makes)
  end

  def show
    respond_with(@make)
  end

  def new
    @make = Make.new
    respond_with(@make)
  end

  def edit
  end

  def create
    @make = Make.new(make_params)
    @make.save
    respond_with(@make)
  end

  def update
    @make.update(make_params)
    respond_with(@make)
  end

  def destroy
    @make.destroy
    respond_with(@make)
  end

  private
    def set_make
      @make = Make.find(params[:id])
    end

    def make_params
      params.require(:make).permit(:name)
    end
end
