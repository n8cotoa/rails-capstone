class Group < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :raid
  belongs_to :current_encounter, class_name: => 'Encounter', foreign_key: => :encounter_id
  has_secure_password
end