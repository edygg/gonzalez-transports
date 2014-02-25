json.array!(@assistants) do |assistant|
  json.extract! assistant, :id, :name, :birth_date, :salary, :gender, :phone, :email
  json.url assistant_url(assistant, format: :json)
end
