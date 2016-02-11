json.array!(@aulas) do |aula|
  json.extract! aula, :id, :numero
  json.url aula_url(aula, format: :json)
end
