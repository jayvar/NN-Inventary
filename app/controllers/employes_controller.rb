class EmployesController < ApplicationController
  before_action :set_employe, only: [:show, :edit, :update, :destroy, :create]

  respond_to :html, :json

  def index
    @employes = Employe.all
    respond_with(@employes)
  end

  def show
    respond_with(@employe)
  end

  def new
    @employe = Employe.new
    respond_with(@employe)
  end

  def edit
  end

  def create
    @employe = Employe.new(employe_params)
    @employe.save
    respond_with(@employe)
  end

  def update
    @employe.update(employe_params)
    respond_with(@employe)
  end

  def destroy
    @employe.destroy
    respond_with(@employe)
  end

  private
    def set_employe
      @employe = Employe.find(params[:id])
    end

    def employe_params
      params.require(:employe).permit(:name, :description)
    end
end
