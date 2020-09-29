class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.valid?
      @resource.save
      redirect_to resource_path(@resource)
    else
      flash[:errors] = @resource.errors.full_messages
      redirect_to new_resource_path
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource.update(resource_params)
    if @resource.valid?
      @resource.save
      redirect_to resource_path(@resource)
    else
      flash[:errors] = @resource.errors.full_messages
      redirect_to edit_resource_path
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to resources_path
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :phone_number, :image_url, :address, :categories, :description, :hours, :web_address)
  end
end
