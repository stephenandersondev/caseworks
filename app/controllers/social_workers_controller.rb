class SocialWorkersController < ApplicationController
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
  
    def social_worker_params
      params.require(:social_worker).permit(:name, :phone_number, :image_url, :location, :email, :specialty)
    end
  end
end
