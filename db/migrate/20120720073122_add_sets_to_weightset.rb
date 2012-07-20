class AddSetsToWeightset < ActiveRecord::Migration
  def change
      change_table :weightsets do |t|
      t.integer :sets
    end
  end
end