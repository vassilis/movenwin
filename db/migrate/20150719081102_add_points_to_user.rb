class AddPointsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :current_pts, :integer, default: 20
  	add_column :users, :total_pts, :integer, default: 20
  end
end
