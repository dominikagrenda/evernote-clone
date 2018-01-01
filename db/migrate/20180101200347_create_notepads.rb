class CreateNotepads < ActiveRecord::Migration[5.1]
  def change
    create_table :notepads do |t|
      t.string :title

      t.timestamps
    end
  end
end
