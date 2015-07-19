class AddWeightToAds < ActiveRecord::Migration
  def change
    add_column :ads, :weight, :integer
  end
end
