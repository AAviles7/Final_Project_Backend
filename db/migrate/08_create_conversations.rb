class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.belongs_to :workspace, foreign_key: true

      t.timestamps
    end
    add_index :conversations, :sender_id
    add_index :conversations, :receiver_id
    add_index :conversations, [:sender_id, :receiver_id], unique: true
  end
end
