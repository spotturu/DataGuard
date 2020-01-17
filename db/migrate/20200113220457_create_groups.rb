class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.date :name, null: false, unique: true 
      t.timestamps
    end
  end
end
