# encoding: utf-8
class Proveedor < ActiveRecord::Base
  # relacion de 1 a varios con clientes
  has_many :clientes
  # Relacion con proveedor, departamento, pais
  belongs_to :paise
  # metodo que por defecto presenta el string
  def to_s
    #$"#{nombre} #{pais}"
    #%(#{nombre} #{pais})
    nombre
  end
  
  
end
