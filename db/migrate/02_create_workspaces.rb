class CreateWorkspaces < ActiveRecord::Migration[6.1]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :join_code

      t.timestamps
    end
  end
end
