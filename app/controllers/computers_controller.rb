class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    if params[:laboratory_id] 
      laboratory = Laboratory.find(params[:laboratory_id])
      @computers = laboratory.computers
    else
      @computers = Computer.all
    end
    respond_with(@computers)
  end

  def show
    respond_with(@computer)
  end

  def new
    @computer = Computer.new
    respond_with(@computer)
  end

  def edit
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.save
    respond_with(@computer)
  end

  def update
    @computer.update(computer_params)
    respond_with(@computer)
  end

  def destroy
    @computer.destroy
    respond_with(@computer)
  end

  private
    def set_computer
      @computer = Computer.find(params[:id])
    end

    def computer_params
      params.require(:computer).permit(:name, :serie, :description, :laboratory_id, :picture, :tag_list)
    end
end
