class FixCardio < ActiveRecord::Migration
  def self.up
	drop_table :cardio
	
	create_table :cardios do |t|
	t.datetime :date
	t.datetime :time
	
	t.timestamps
	end
  end
  
  def self.down
    drop_table :cardios
  end
  
end
