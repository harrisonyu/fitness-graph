class RemoveTypeFromExercise < ActiveRecord::Migration
  def up
    remove_column :exercises, :type
    add_column :exercises, :exercise_type, :string
  end

  def down
    remove_column :exercises, :exercise_type
    add_column :exercises, :type, :string
  end
end
