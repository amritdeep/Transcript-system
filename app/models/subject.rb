class Subject < ActiveRecord::Base
  belongs_to :season
  belongs_to :user


  def grade_cal(grade)
  	case grade
  	when 75..100 then "A"
  	when 60..75 then "A+"
  	when 45..60 then "A-"
  	when 30..45 then "B"
  	when 15..30 then "B+"
  	when 0..15 then "B-"
  	else
  		"ERROR"  	  			  		
  	end  	
  end


end
