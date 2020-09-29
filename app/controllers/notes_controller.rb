class NotesController < ApplicationController
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
  
    def note_params
      params.require(:note).permit(:content, :case_id)
    end
  end
end
