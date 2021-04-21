class CreateWorkspaceMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :workspace_members do |t|
      t.references :workspace, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :remember

      t.timestamps
    end
  end
end
