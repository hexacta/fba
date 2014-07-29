json.array!(@horario_entregas) do |horario_entrega|
  json.extract! horario_entrega, :horario
  json.url horario_entrega_url(horario_entrega, format: :json)
end