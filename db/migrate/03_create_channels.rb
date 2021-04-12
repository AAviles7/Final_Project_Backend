class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.references :workspace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
