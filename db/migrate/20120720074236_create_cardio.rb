class CreateCardio < ActiveRecord::Migration
  def self.up
	create_table :cardio do |t|
	t.datetime :date
	t.datetime :time
	
	t.timestamps
	end
  end
  
  def self.down
    drop_table :cardio
  end
  
end