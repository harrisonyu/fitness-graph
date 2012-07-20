class RemoveDateFromExercises < ActiveRecord::Migration
  def up
    remove_column :exercises, :date
  end

  def down
    remove_column :exercises, :date
  end
end
