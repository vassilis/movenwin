json.array!(@ads) do |ad|
  json.extract! ad, :id, :content, :site_url, :img_url, :video_url, :merchant_id
  json.url ad_url(ad, format: :json)
end
