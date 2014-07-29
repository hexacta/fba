json.array!(@donantes) do |donante|
  json.extract! donante, :codigo, :donante
  json.url donante_url(donante, format: :json)
end