class HomeController < ApplicationController
  def index
    
    points = Entry.total_points
    total_points = 1000.0
    
    complete = (points.to_f/total_points.to_f)* 100    
    incomplete = 100 - complete.to_i
    @graph  = "https://chart.googleapis.com/chart?cht=p3&chs=460x220&chd=t:#{complete},#{incomplete}"+
    "&chl=complete|incomplete&chdl=#{complete.to_i}%|#{incomplete.to_i}%"
  end
end
