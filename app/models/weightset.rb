class Weightset < ActiveRecord::Base
  attr_protected :reps, :weight
  
  belongs_to :exercise
  
end
