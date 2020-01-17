class CreateGroupMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_members do |t|
      # t.references :group
	  t.references :group_leader
	  t.references :user
	  t.string :remarks
      t.timestamps
    end
  end
end
