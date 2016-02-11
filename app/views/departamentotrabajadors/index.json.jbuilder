json.array!(@departamentotrabajadors) do |departamentotrabajador|
  json.extract! departamentotrabajador, :id, :departamento_id, :trabajador_id
  json.url departamentotrabajador_url(departamentotrabajador, format: :json)
end
