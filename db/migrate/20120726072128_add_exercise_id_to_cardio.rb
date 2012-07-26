class AddExerciseIdToCardio < ActiveRecord::Migration
  def up
    remove_column :cardios, :time
	add_column :cardios, :exercise_id, :integer
  end
  
  def down
    add_column :cardios, :time, :datetime
	remove_column :cardios, :exercise_id
  end
end
