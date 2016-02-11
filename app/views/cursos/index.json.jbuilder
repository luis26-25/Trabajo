json.array!(@cursos) do |curso|
  json.extract! curso, :id, :codigo, :nombre, :capacidad, :cantidad_inscritos, :descripcion, :tipo, :semestre, :inicio, :fin, :trabajador_id, :aula_id
  json.url curso_url(curso, format: :json)
end
