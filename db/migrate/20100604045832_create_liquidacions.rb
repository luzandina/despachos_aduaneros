class CreateLiquidacions < ActiveRecord::Migration
  def self.up
    create_table :liquidacions do |t|
      t.integer :orden_servicio_id
      t.integer :cliente_id
      t.integer :carpeta_id
      t.integer :personal_id
      t.integer :documentos_id
      t.integer :item
      t.integer :fob_dolares
      t.integer :seguro
      t.integer :flete_I
      t.integer :flete_II
      t.integer :otros_gastos
      t.integer :cif_dolares
      t.integer :cif_bolivianos
      t.integer :base_imponible
      t.integer :ga
      t.integer :ga_porcentaje
      t.integer :iva
      t.integer :ice
      t.integer :diu
      t.integer :total_impuestos
      t.integer :almacenaje
      t.integer :camara_comercio
      t.integer :senasac
      t.integer :otros_1
      t.integer :otros_2
      t.integer :gastos_tramite
      t.integer :nuestros_servicios
      t.integer :total_servicios
      t.integer :total_despacho
      t.string :descripcion
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :liquidacions
  end
end
