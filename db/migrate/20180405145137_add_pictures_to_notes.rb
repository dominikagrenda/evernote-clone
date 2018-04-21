class AddPicturesToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :pictures, :jsonb
  end
end
