class AdduseridToexercise < ActiveRecord::Migration
  def change
    change_table :exercises do |t|
      t.integer :user_id
  
    end
  end
end
