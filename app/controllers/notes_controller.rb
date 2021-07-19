class NotesController < ApplicationController

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to root_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :description)
  end
  
end
