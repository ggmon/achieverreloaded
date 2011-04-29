class Goal < ActiveRecord::Base
  has_many :goal_item
  has_many :plan_items, :through=> :goal_item
  has_many :entries

  def total_points
    points = self.entries.all.map{|e| e.plan_item.points.to_i * e.quantity.to_i * (e.plan_item.positiveconnotation ?  1 : -1 )}.inject{|a,b| a + b}
    points = 0 if !points
    points
  end

  def total_points_by_date
    points = self.entries.all.group_by{|a| a.entry_for}
    points_hash = Hash.new()
    points.each do |k,v|
      points_hash[k] = v.map{|e| e.plan_item.points.to_i * e.quantity.to_i * (e.plan_item.positiveconnotation ?  1 : -1 )}.inject{|a,b| a + b}
    end
    points_hash
  end

end

