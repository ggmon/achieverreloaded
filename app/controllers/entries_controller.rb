class EntriesController < ApplicationController
  before_filter :get_goal 
  def index
    @entries = @goal.entries
    @points = @goal.total_points
    @points = 0 if not @points
    @points_by_date = @goal.total_points_by_date
    
    @start_date = Date.parse("07 Apr 2011")
    @today = Date.today
    @end_date = Date.parse("29 Apr 2011")
    
  end

  def show

  end
  
  def new
    @ent = Entry.new
    @plan_items = @goal.plan_items
  end

  def create
    @ent = Entry.new(params[:entry])
    @goal.entries << @ent
    redirect_to :action=> "index"
    
  end

  def edit
    @ent = @goals.entries.find(params[:id])    
    @plan_items = @goal.plan_items
  end

  def update
    @ent = @goals.entries.find(params[:id])
    @ent.update_attributes(params[:entry])
    redirect_to :action => "index"
  end

  def destroy
    
  end
  
  def get_goal
    @goal = Goal.find(params[:goal_id])
  end

end
