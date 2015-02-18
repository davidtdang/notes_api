class NotesController < ApplicationController
  skip_before_filter  :verify_authenticity_token

def index
  render json: Note.all
end

def new
  @note = Note.news
end

def edit
end

def create
  @note = Note.new(note_params)
  if @note.save
    render:note
  end
end

private
  def note_params
    params.require(:note).permit(:title, :body)
  end


end
