# encoding: utf-8
class Carpeta < ActiveRecord::Base
  
  # relacion de 1 a varios con documentos
  has_one :documento
  
  has_one :liquidacion
  
# Relacion con cliente, personal
  belongs_to :cliente
  belongs_to :personal
  
# Valida la precensia de los campos
  validates_presence_of :orden_servicio, :nro_carpeta
  
  # metodo que por defecto presenta el string
  def to_s
    "#{orden_servicio} - (#{nro_carpeta})"
  end
  
  
end
