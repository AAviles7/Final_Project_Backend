class CreateDirectMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :direct_messages do |t|
      t.text :body
      t.belongs_to :conversation, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
