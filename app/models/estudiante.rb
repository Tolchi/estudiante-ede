class Estudiante
  include Mongoid::Document
  include Mongoid::Search
  include Mongoid::Attributes::Dynamic
  extend Enumerize
  validates :name, :apellido, presence: true
  validates :email, uniqueness: true
  validates :name, uniqueness:{scope: :apellido}
  validates :nro_documento, uniqueness:{scope: :tipo_documento}
  field :name, type: String
  field :apellido, type: String
  field :direccion, type: String
  field :tel_casa, type: String
  field :tel_trabajo, type: String
  field :celular, type: String
  field :email, type: String
  field :tipo_documento
  enumerize :tipo_documento, in: [:DNI, :Pasaporte, :Otro]
  field :nro_documento, type: String
  field :nacionalidad
  enumerize :nacionalidad, in: [:Argentina, :Bolivia, :Brasil, :Chile, :Colombia, :Peru, :Venezuela]
  field :vigencia_pasaporte, type: String
  field :fecha_nac, type: Date
  field :sexo
  enumerize :sexo, in: [:Masculino, :Femenino]
  field :estado_civil
  enumerize :estado_civil, in: [:Soltero, :Casado, :Divorciado, :Separado, :Viudo]
  field :trabaja, type: Boolean
  field :empresa, type: String
  field :cargo, type: String
  field :universidad, type: String
  field :carrera, type: String
  field :anio, type: String
  field :talento, type: String
  
  search_in :name, :apellido, :talento
  
  def self.column_names
    self.fields.collect { |field| field[0] }
  end
  
  def search
    self.full_text_search("%#{query}", relevant_search: true)
  end
end
