class AddLiquidacionPagos < ActiveRecord::Migration
  def self.up
    add_column :liquidacions, :pagado, :boolean,:default => false
    add_column :liquidacions, :saldo, :decimal, :precision => 12, :scale => 2
  end

  def self.down
    remove_column :liquidacions, :pagado
    remove_column :liquidacions, :saldo
  end
end
