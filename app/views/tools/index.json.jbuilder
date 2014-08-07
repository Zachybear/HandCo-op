json.array!(@tools) do |tool|
  json.extract! tool, :id, :title
  json.url tool_url(tool, format: :json)
end
