class PagesController < ApplicationController
  def home
    @notes = Note.all
  end

  def index
  end

  def show
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    end
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :description)
  end
end
