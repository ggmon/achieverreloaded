class CreateGoalItems < ActiveRecord::Migration
  def self.up
    create_table :goal_items do |t|
      t.references :goal
      t.references :plan_item
    end
  end

  def self.down
    drop_table :goal_items
  end
end
