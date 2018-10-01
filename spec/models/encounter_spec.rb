require 'rails_helper'

describe Encounter do
  context 'active record relations' do
    it { should have_and_belong_to_many :raid_symbols }
    it { should belong_to :raid }
    it { should have_many :maps }
  end
end