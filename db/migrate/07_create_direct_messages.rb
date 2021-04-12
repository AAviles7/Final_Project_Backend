class CreateDirectMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :direct_messages do |t|
      t.references :sender
      t.references :reciever
      t.text :body

      t.timestamps
    end
  end
end
