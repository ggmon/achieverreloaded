class Entry < ActiveRecord::Base
  belongs_to :plan_item
  belongs_to :goal

  def self.total_points
    @points = Entry.all.map{|e| e.plan_item.points.to_i * e.quantity.to_i * (e.plan_item.positiveconnotation ?  1 : -1 )}.inject{|a,b| a + b}
  end

  def self.total_points_by_date
    points = Entry.all.group_by{|a| a.entry_for}
    points_hash = Hash.new()
    points.each do |k,v|
      points_hash[k] = v.map{|e| e.plan_item.points.to_i * e.quantity.to_i * (e.plan_item.positiveconnotation ?  1 : -1 )}.inject{|a,b| a + b}
    end
    points_hash
  end
end
