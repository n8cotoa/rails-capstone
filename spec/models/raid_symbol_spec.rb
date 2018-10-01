require 'rails_helper'

describe RaidSymbol do
  context 'activerecord relationships' do
    it { should have_and_belong_to_many :encounters }
  end
end