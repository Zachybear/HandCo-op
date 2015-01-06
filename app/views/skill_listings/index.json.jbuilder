json.array!(@skill_listings) do |skill_listing|
  json.extract! skill_listing, :id
  json.url skill_listing_url(skill_listing, format: :json)
end
