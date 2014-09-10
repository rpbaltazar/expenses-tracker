json.array!(@registries) do |registry|
  json.extract! registry, :id, :reg_date, :total_value, :reg_type, :description
  json.url registry_url(registry, format: :json)
end
