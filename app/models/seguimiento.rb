# encoding: utf-8
class Seguimiento < ActiveRecord::Base

  RECINTOS = ["201", "211", "231", "232"]
  CANALES = ["rojo", "amarillo", "verde"]

  belongs_to :carpeta

  def self.search(search)
    Seguimiento.where(["carpetas.orden_servicio LIKE ?", "%#{search}%"]).includes(:carpeta)
  end
end
