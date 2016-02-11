json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :dni, :codigo_modular, :nombre, :paterno, :materno, :telefono, :direccion, :colegio_procedencia, :orden_merito, :lugar_nacimiento, :sexo, :promocion, :estado, :departamento_id, :user_id
  json.url estudiante_url(estudiante, format: :json)
end
