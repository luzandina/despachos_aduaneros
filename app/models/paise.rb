# encoding: utf-8
class Paise < ActiveRecord::Base
  # Valida la precensia de los campos
  validates_presence_of :nombre
  
  # relacion de 1 a varios con documentos
  has_many :clientes
  has_many :proveedors
  
  # metodo que por defecto presenta el string
  def to_s
    nombre
  end
end
