json.array!(@campers) do |camper|
  json.extract! camper, :id, :model, :year, :vin, :mileage, :customer_id, :make_id
  json.url camper_url(camper, format: :json)
end
