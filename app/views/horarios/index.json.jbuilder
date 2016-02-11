json.array!(@horarios) do |horario|
  json.extract! horario, :id, :inicio, :fin, :dia, :turno_id, :curso_id
  json.url horario_url(horario, format: :json)
end
