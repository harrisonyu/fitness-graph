class Weightset < ActiveRecord::Base
  attr_protected :reps, :weight, :sets, :date
  
  belongs_to :exercise
  
end
