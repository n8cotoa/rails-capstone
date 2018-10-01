class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :location
      t.string :image
      t.integer :encounter_id

      t.timestamps
    end
  end
end
