require 'rails_helper'

describe ChatRoom do
  context 'ActiveRecord relationships' do
    it { should belong_to :group }
    it { should have_many :messages }
  end
end