class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :raid_id
      t.integer :current_encounter_id
      t.string :name
      t.string :password_digest
    end
  end
end
