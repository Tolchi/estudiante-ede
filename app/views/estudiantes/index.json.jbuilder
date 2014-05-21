json.array!(@estudiantes) do |estudiante|
  json.extract! estudiante, :id, :name, :apellido, :direccion, :tel_casa, :tel_trabajo, :celular, :email, :tipo_documento, :nro_documento, :nacionalidad, :vigencia_pasaporte, :fecha_nac, :sexo, :estado_civil, :empresa, :cargo, :universidad, :carrera, :anio, :talento
  json.url estudiante_url(estudiante, format: :json)
end
