class CreateChatRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_rooms do |t|
      t.integer :group_id
    end
  end
end
