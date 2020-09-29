class CasesController < ApplicationController
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
  
    private
  
    def case_params
      params.require(:case).permit(:client_id, :social_worker_id, :resource_id, :focus, :status)
    end
  end
end
