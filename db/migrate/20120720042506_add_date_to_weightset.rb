class AddDateToWeightset < ActiveRecord::Migration
  def change
      change_table :weightsets do |t|
      t.datetime :date
    end
  end
end
