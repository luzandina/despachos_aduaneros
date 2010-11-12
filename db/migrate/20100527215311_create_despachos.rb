class CreateDespachos < ActiveRecord::Migration
  def self.up
    create_table :despachos do |t|
      t.string :orden_servicio
      t.string :nro_carpeta
      t.date :fecha
      t.string :cliente
      t.string :estado
      t.string :tipo
      t.date :fecha_cierre
      t.string :total
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :despachos
  end
end
