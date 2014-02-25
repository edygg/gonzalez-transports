json.array!(@travel_packages) do |travel_package|
  json.extract! travel_package, :id, :price
  json.url travel_package_url(travel_package, format: :json)
end
