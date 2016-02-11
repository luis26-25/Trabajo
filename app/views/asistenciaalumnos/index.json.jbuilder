json.array!(@asistenciaalumnos) do |asistenciaalumno|
  json.extract! asistenciaalumno, :id, :fecha, :estado, :estudiante_id, :horario_id
  json.url asistenciaalumno_url(asistenciaalumno, format: :json)
end
