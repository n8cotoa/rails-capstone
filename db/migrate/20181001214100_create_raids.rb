class CreateRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :raids do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
