json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :name,, :apellido,, :direccion,, :tel-casa,, :tel-trabajo,, :celular,, :email,, :tipo-documento,, :nro-documento,, :nacionalidad,Fnac
  json.url estudiante_url(estudiante, format: :json)
end
