# encoding: utf-8
class Despacho < ActiveRecord::Base
  # Valida la precensia de los campos
  validates_presence_of  :orden_servicio, :nro_carpeta, :fecha, :cliente, :estado, :tipo, :total, :descripcion
end
