# encoding: utf-8
class Personal < ActiveRecord::Base
  # relacion de 1 a varios con clientes
  has_many :documentos
  has_many :carpetas
  has_many :liquidacions
  
  # metodo que por defecto presenta el string
  def to_s
    "#{nombres} #{paterno}"
  end
  
  # Valida la precensia de los campos
  validates_presence_of :nombres, :paterno, :materno, :cedula_identidad, :cargo, :direccion, :email, :fecha_ingreso, :sueldo, :telefono

end
