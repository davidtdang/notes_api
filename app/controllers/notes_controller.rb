class NotesController < ApplicationController
  skip_before_filter  :verify_authenticity_token

def index
  @notes = Note.all
  render json: Note.all
end

def new
  @note = Note.new
end

def edit
end

def create
  @note = Note.new(note_params)
  if @note.save
    render:note
  end
end

def destroy
  @note = Note.find(params[:id])
  if @note.destroy
    render json: @note
  end
end

private
  def note_params
    params.require(:note).permit(:title, :body)
  end


end
