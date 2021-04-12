class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :display_name
      t.text :bio
      t.string :phone_number

      t.timestamps
    end
  end
end
