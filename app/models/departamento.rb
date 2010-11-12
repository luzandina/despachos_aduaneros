# encoding: utf-8
class Departamento < ActiveRecord::Base
  # Valida la precensia de los campos
  validates_presence_of :departamento
  
  # relacion de 1 a varios con documentos
  has_many :clientes
  
  # metodo que por defecto presenta el string
  def to_s
    departamento
  end
end
