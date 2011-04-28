class PlanItemsController < ApplicationController
  before_filter :get_goal
  def index    
    @plan_items = @goal.plan_items
  end

  def show

  end

  def new
    @plan_item = PlanItem.new
  end
  
  def create
    @plan_item = PlanItem.new(params[:plan_item])
    @goal.plan_items << @plan_item
    redirect_to :action=>"index"
  end

  def edit    
    @plan_item = @goal.plan_items.find(params[:id])
    
  end
  
  def update
    @plan_item = @goal.plan_items.find(params[:id])
    @plan_item.update_attributes(params[:plan_item])
    redirect_to :action=> "index"
  end

  def destroy
    
  end
  
  def get_goal
    @goal = Goal.find(params[:goal_id])
  end
end
