json.array!(@turnos) do |turno|
  json.extract! turno, :id, :descripcion, :hora_inicio, :hora_fin
  json.url turno_url(turno, format: :json)
end
