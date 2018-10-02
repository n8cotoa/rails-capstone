class AddTimestampsToMessages < ActiveRecord::Migration[5.2]
  def change
    change_table :messages do |t|
      t.timestamps
    end
  end
end
