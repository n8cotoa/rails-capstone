class CreateJoinTableEncountersRaidSymbols < ActiveRecord::Migration[5.2]
  def change
    create_join_table :encounters, :raid_symbols
  end
end
