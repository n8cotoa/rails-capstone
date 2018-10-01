class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.string :name
      t.text :description
      t.text :stradegy
      t.integer :raid_id
      t.timestamps
    end

    add_index :encounters, :raid_id
  end
end
