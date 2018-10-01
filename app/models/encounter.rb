class Encounter < ApplicationRecord
  has_and_belongs_to_many :raid_symbols
  belongs_to :raid
  has_many :maps
end
