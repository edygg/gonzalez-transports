json.array!(@buses) do |bus|
  json.extract! bus, :id, :trademark, :model, :capacity
  json.url bus_url(bus, format: :json)
end
