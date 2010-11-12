# encoding: utf-8
class Cliente < ActiveRecord::Base
  # Relacion con proveedor, departamento, pais
  belongs_to :proveedor
  belongs_to :depatamento
  belongs_to :paise
  
  # metodo que por defecto presenta el string
  has_many :documentos
  has_many :liquidacions
  has_many :carpetas
  
  # Valida la precensia de los campos
  validates_presence_of :nombre, :nit_ci, :direccion, :telefono, :email, :fecha, :comision, :proveedor_id
  

  def to_s
    nombre
  end

  def self.listado
    all.map { |v| [v.to_s, v.id] }
  end
end
