class Exercise < ActiveRecord::Base
  attr_accessible :name, :exercise_type, :date, :user_id
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => [:user_id]
  
  
  has_many :weightsets
  has_many :cardios
  belongs_to :user
  
  
end
