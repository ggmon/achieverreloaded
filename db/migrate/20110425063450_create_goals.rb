class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :points
      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
