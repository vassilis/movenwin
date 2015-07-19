class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.text :content
      t.string :site_url
      t.string :img_url
      t.string :video_url
      t.references :merchant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
