json.array!(@inscripcions) do |inscripcion|
  json.extract! inscripcion, :id, :fecha, :estudiante_id, :curso_id
  json.url inscripcion_url(inscripcion, format: :json)
end
