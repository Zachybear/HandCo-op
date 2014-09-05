json.array!(@tool_listings) do |tool_listing|
  json.extract! tool_listing, :id
  json.url tool_listing_url(tool_listing, format: :json)
end
