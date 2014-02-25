json.array!(@bus_drivers) do |bus_driver|
  json.extract! bus_driver, :id, :name, :birth_date, :salary, :gender, :phone, :email
  json.url bus_driver_url(bus_driver, format: :json)
end
