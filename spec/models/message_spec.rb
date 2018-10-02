require 'rails_helper'

describe Message do
  context 'ActiveRecord relationships' do
    it { should belong_to :user }
    it { should belong_to :chat_room }
  end
end