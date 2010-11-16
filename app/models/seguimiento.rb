# encoding: utf-8
class Seguimiento < ActiveRecord::Base

  RECINTOS = ["201", "211", "231", "232"]
  CANALES = ["rojo", "amarillo", "verde"]

  belongs_to :carpeta
end
