json.array!(@trabajadors) do |trabajador|
  json.extract! trabajador, :id, :dni, :codigo_modular, :paterno, :materno, :nombre, :telefono, :especialidad, :grado, :user_id
  json.url trabajador_url(trabajador, format: :json)
end
