class PlanItem < ActiveRecord::Base
  has_many :entries
  has_many :goals, :through => :goal_item
end
