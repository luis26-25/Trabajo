json.array!(@asistenciatrabajadors) do |asistenciatrabajador|
  json.extract! asistenciatrabajador, :id, :entrada, :salida, :estado, :trabajador_id, :horario_id
  json.url asistenciatrabajador_url(asistenciatrabajador, format: :json)
end
