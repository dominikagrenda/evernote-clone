class NotesController < ApplicationController

  def index
    @note = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @notepad = params[:note][:notepad_id]
    if @note.save
      redirect_to notepad_path(@notepad)
    else
      render :new
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :text, :notepad_id)
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to @note
    else
      render :edit
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to notes_path
  end

end
