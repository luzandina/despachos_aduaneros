# encoding: utf-8
class Pago < ActiveRecord::Base

  before_save :actualizar_saldo
  before_destroy :restaurar_saldo

  belongs_to :liquidacion

  validates_presence_of :fecha
  validates_numericality_of :cantidad, :if => Proc.new { |p| p.cantidad > 0 }, :messagge => 'Solo se adminte numeros positivos'
  validate :verificar_saldo

  attr_accessor :saldo

  private
  def verificar_saldo
    @liq = Liquidacion.find(self.liquidacion_id)
    if cantidad > @liq.saldo
      self.errors.add(:cantidad, "La cantidad no puede ser mayor a #{@liq.saldo}")
    end
  end

  def actualizar_saldo
    self.saldo = @liq.saldo = @liq.saldo - self.cantidad
    @liq.save
  end

  def restaurar_saldo
    liq = Liquidacion.find(self.liquidacion_id)
    liq.saldo += self.cantidad
    liq.save
  end

end
