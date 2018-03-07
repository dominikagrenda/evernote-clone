class AddingNoteToNotepad < ActiveRecord::Migration[5.1]
  def change
    add_reference :notes, :notepad, index: true
  end
end
