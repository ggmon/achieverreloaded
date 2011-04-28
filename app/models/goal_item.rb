class GoalItem < ActiveRecord::Base
  belongs_to :plan_item
  belongs_to :goal
end
