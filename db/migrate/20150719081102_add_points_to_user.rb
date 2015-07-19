class AddPointsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :current_pts, :integer
  	add_column :users, :total_pts, :integer
  end
end
