class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.references :goal
      t.references :plan_item
      t.date :entry_for
      t.integer :quantity
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
