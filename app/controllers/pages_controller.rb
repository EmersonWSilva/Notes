class PagesController < ApplicationController
  def home
    if params[:query].present?
      @notes = Note.where(id: params[:query])
    else
      @notes = Note.all
    end
    @note = Note.new
  end
end
