require 'rails_helper'

describe Group do
  context 'active record relations' do
    it { should have_and_belong_to_many :users }
    it { should belong_to :raid }
    it { should belong_to :current_encounter }
    # it { should have_secure_password }
  end
end