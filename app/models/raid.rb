class Raid < ApplicationRecord
  has_many :encounters
  has_many :groups
end
