class CreateWeightsets < ActiveRecord::Migration
  def self.up
    create_table :weightsets do |t|
      t.integer :exercise_id
      t.integer :reps
      t.float :weight

      t.timestamps
    end
  end
  
  def self.down
	drop_table	:weightset
  end
  
end
