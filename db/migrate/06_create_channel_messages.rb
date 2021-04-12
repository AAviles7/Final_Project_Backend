class CreateChannelMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :channel_messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :channel, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
