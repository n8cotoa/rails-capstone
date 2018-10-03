class Seed
  def self.begin
    seed = Seed.new
    seed.destroy
    seed.generate_raids
    seed.generate_encounters
    seed.generate_maps
    seed.generate_raid_symbols
    seed.generate_encounter_raid_symbols
  end
  
  def destroy
    Raid.destroy_all
    Encounter.destroy_all
    RaidSymbol.destroy_all
    Map.destroy_all
  end
  
  def generate_raids
    raids = ["Leviathan", "Eater of Worlds", "Spire of Stars"]
    raids.each do |raid|
      Raid.create!(name: raid, location: "Leviathan", description: "Description of #{raid} Raid.")
    end  
  end
  
  def generate_encounters
    15.times do |i|
      raid_id = Raid.all.shuffle.first.id
      Encounter.create!(name: "Encounter #{i}", description: "Description for Encounter #{i}.", stradegy: "Strategy for Encounter #{i}", raid_id: raid_id)
    end
  end
  
  def generate_maps
    encounters = Encounter.all
    encounters.each do |encounter|
      raid = Raid.find(encounter.raid_id)
      Map.create!(location: raid.location, encounter_id: encounter.id, image: 'test-image.jpg')
    end
  end
  
  def generate_raid_symbols
    raid_symbols = ['Chalice', 'Sun', 'Dog', 'Axes']
    raid_symbols.each do |raid_symbol|
      RaidSymbol.create!(name: raid_symbol, description: "Description for #{raid_symbol} symbol")
    end
  end
  
  def generate_encounter_raid_symbols
    encounters = Encounter.all
    encounters.each do |encounter|
      4.times do
        raid_symbol = RaidSymbol.all.shuffle.first
        encounter.raid_symbols.push(raid_symbol)
      end
    end
  end
end

Seed.begin