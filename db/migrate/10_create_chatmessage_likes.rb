class CreateChatmessageLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :chatmessage_likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chatroom_message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
