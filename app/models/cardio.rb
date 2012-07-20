class Cardio < ActiveRecord::Base
  attr_protected :time, :date
  
  belongs_to :exercise
  
end
