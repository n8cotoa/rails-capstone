require 'rails_helper'

describe Map do
  context 'active record relationship' do
    it { should belong_to :encounter }
  end
end