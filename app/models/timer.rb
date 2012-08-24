class Timer < ActiveRecord::Base
  belongs_to :cardio
  attr_protected :hour, :minute, :second
 
  validates :hour, :numericality => { :only_integer => true }
  validates :minute, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 60 }
  validates :second, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 60 }
  
  def pretty_print
    @str = "#{self.hour} Hours #{self.minute} Minutes #{self.second} Seconds"
  end
end
