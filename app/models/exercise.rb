class Exercise < ActiveRecord::Base
  attr_accessible :name, :type, :date, :user_id
  
  has_many :weightsets
  belongs_to :user
  
  
end
