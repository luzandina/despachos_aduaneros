# encoding: utf-8
class Liquidacion < ActiveRecord::Base
  
  before_save :salvar_calculados
  before_save :set_saldo

  
  # Relacion con carpeta, cliente, personal, doc
  belongs_to :carpeta
  belongs_to :cliente
  belongs_to :personal
  belongs_to :documento

  has_many :pagos

  # Valida la precensia de los campos
  validates_presence_of :fob_dolares, :seguro, :flete_I, :almacenaje, :gastos_tramite, :nuestros_servicios, :descripcion, :fecha

  # Realiza calculos de liquidacion, sumas
  def salvar_calculados
    self.cif_dolares = fob_dolares.to_f + seguro.to_f + flete_I.to_f + flete_II.to_f + otros_gastos.to_f
    self.cif_bolivianos = 7.07 * cif_dolares.to_f
    self.ga = cif_bolivianos * 0.10
    self.iva = (cif_bolivianos.to_f + ga.to_f) * 0.1494
    self.ice = (cif_bolivianos.to_f + ga.to_f) * 0.18
    self.total_impuestos = ga.to_f + iva.to_f + ice.to_f + diu.to_f
    # otros_1 = ibmetro
    # otros_2 = ibnorca
    self.total_servicios = almacenaje.to_f + senasac.to_f + camara_comercio.to_f + otros_1.to_f + otros_2.to_f + nuestros_servicios.to_f + gastos_tramite.to_f
    
    self.total_despacho = total_impuestos.to_f + total_servicios.to_f
  end

  def set_saldo
    if self.saldo.nil?
      self.saldo = total_despacho.to_f
    end
  end
end
