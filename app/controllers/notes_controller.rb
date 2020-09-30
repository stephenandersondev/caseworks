class NotesController < ApplicationController
  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.valid?
      @note.save
      redirect_to case_path(@note.case)
    else
      flash[:errors] = @note.errors.full_messages
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note.update(note_params)
    if @note.valid?
      @note.save
      redirect_to case_path(@note.case)
    else
      flash[:errors] = @note.errors.full_messages
    end
  end

  def destroy
    @note = Note.find(params[:id])
    redirect_case = @note.case
    @note.destroy
    redirect_to case_path(redirect_case)
  end

  private

  def note_params
    params.require(:note).permit(:content, :case_id, :id)
  end
end
