json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :departure_date, :arrival_date
  json.url ticket_url(ticket, format: :json)
end
