class CreateTimers < ActiveRecord::Migration
  def self.up
    create_table :timers do |t|
      t.integer :hour
      t.integer :minute
      t.integer :second
      t.integer :cardio_id

      t.timestamps
    end
  end
  
  def self.down
    drop_table :timers
  end
end
