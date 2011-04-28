class GoalsController < ApplicationController
  def index
    @goals = Goal.find(:all)
  end
    
  def show
    @goal = Goal.find(params[:id])    
    @plan_items = @goal.plan_items
    @plan_items = @goal.entries
  end

  def new
    @goal = Goal.new        
  end

  def create
    @goal = Goal.new(params[:goal])
    @goal.save
    redirect_to :action=>"index"
  end
end
