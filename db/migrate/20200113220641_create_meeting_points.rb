class CreateMeetingPoints < ActiveRecord::Migration[6.0]
  def change
    create_table :meeting_points do |t|
      t.string :name, null: false
      t.string :remarks
      t.text :memories
      # t.references :group
	  t.references :group_leader
      t.timestamps
    end
  end
end
