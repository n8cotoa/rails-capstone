require 'rails_helper'

describe Raid do
  context 'ActiveRecord relationships' do
    it { should have_many :encounters }
    it { should have_many :groups }
  end
end