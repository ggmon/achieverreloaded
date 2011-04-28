class CreatePlanItems < ActiveRecord::Migration
  def self.up
    create_table :plan_items do |t|
      t.string :name, :limit=>64
      t.text :description
      t.boolean :positiveconnotation, :default=>true
      t.string :points
      t.timestamps
    end
  end

  def self.down
    drop_table :plan_items
  end
end
