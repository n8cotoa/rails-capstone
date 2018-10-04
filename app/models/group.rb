class Group < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :raid, optional: true
  belongs_to :current_encounter, class_name: 'Encounter', foreign_key: 'current_encounter_id', optional: true
  # has_secure_password
  
  validates :name, presence: true
  validates :name, length: { minimum: 2 }
end