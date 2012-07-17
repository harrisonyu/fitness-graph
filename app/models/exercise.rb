class Exercise < ActiveRecord::Base
  attr_protected :name, :type, :date
  
  has_many :weightsets
  belongs_to :user
  
  
end
