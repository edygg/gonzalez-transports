json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :departure_time
  json.url schedule_url(schedule, format: :json)
end
