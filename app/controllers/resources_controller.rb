class ResourcesController < ApplicationController
    def index
    end
  
    def show
    end
  
    def new
    end
  
    def create
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
    end
  
    private
  
    def resource_params
      params.require(:resource).permit(:name, :phone_number, :image_url, :address, :email, :categories, :description, :hours, :web_address)
    end
  end
end
