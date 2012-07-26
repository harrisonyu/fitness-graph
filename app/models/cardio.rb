class Cardio < ActiveRecord::Base
  attr_protected :time, :date
  
  has_one :timer
  belongs_to :exercise
  
end
