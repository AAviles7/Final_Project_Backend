class CreateChatroomMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :chatroom_messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
