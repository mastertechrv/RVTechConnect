json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :make
  json.url manufacturer_url(manufacturer, format: :json)
end
