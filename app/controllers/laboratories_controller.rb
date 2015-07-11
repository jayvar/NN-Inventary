class LaboratoriesController < ApplicationController
  before_action :set_laboratory, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    if params[:employe_id] 
      employe = Employe.find(params[:employe_id])
      @laboratories = employe.laboratories
    else
      @laboratories = Laboratory.all
    end
    respond_with(@laboratories)
  end
  def show
    respond_with(@laboratory)
  end

  def new
    @laboratory = Laboratory.new
    respond_with(@laboratory)
  end

  def edit
  end

  def create
    @laboratory = Laboratory.new(laboratory_params)
    @laboratory.save
    respond_with(@laboratory)
  end

  def update
    @laboratory.update(laboratory_params)
    respond_with(@laboratory)
  end

  def destroy
    @laboratory.destroy
    respond_with(@laboratory)
  end

  private
    def set_laboratory
      @laboratory = Laboratory.find(params[:id])
    end

    def laboratory_params
      params.require(:laboratory).permit(:name, :aforo, :description, :employe_id)
    end
end
