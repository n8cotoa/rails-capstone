class RaidSymbol < ApplicationRecord
  has_and_belongs_to_many :encounters
end
