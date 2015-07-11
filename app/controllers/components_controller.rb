class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    if(params[:computer_id])
    computer = Computer.find(params[:computer_id])
    @components = computer.components
    else
    @components = Component.all
    end
    respond_with(@components)
  end

  def show
    respond_with(@component)
  end

  def new
    @component = Component.new
    respond_with(@component)
  end

  def edit
  end

  def create
    @component = Component.new(component_params)
    @component.save
    respond_with(@component)
  end

  def update
    @component.update(component_params)
    respond_with(@component)
  end

  def destroy
    @component.destroy
    respond_with(@component)
  end

  private
    def set_component
      @component = Component.find(params[:id])
    end

    def component_params
      params.require(:component).permit(:name, :description, :computer_id)
    end
end
