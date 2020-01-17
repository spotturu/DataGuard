class CreateGroupLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :group_leaders do |t|
      t.references :group
      t.references :user
      t.timestamps
    end
  end
end
