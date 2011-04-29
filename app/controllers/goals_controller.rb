class GoalsController < ApplicationController
  def index
    @goals = Goal.find(:all)
  end
    
  def show
    @goal = Goal.find(params[:id])    

    @plan_items = @goal.plan_items
    @plan_items = @goal.entries
    @pointstobe = @goal.points
    @points_by_date = @goal.total_points_by_date
    @pointstaken = @goal.total_points
  end

  def new
    @goal = Goal.new        
  end

  

  def create
    @goal = Goal.new(params[:goal])
    @goal.save
    redirect_to :action=>"index"
  end

  def edit
    @goal = Goal.find(params[:id])    
  end

  def update
    @goal = Goal.find(params[:id])    
    @goal.update_attributes(params[:goal])
    redirect_to :action => "index"
  end
end
