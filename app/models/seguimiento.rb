# encoding: utf-8
class Seguimiento < ActiveRecord::Base
 

  # Relacion con carpeta, cliente, personal, tipo_doc
  belongs_to :carpeta
  belongs_to :cliente
  belongs_to :personal
  belongs_to :tipo_documento

  # relacion de 1 a varios 
  has_many :liquidacions
  
  
  # Valida la precensia de los campos
  validates_presence_of :recinto, :regimen, :elavoracion_dav, :elavoracion_dui, :validacion_dui, :numero_registro, :pago_tributos, :canal, :imprecion_dui_dav, :presentacion_carpeta, :tecnico_aduana, :levante_mercancia, :pago_almacenaje_entrega, :facturacion, :observaciones  

end
