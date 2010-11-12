class CreateEstadoDespachos < ActiveRecord::Migration
  def self.up
    create_table :estado_despachos do |t|
      t.string :es_despacho
      t.integer :es_desp_id
      t.string :descripcion_estado

      t.timestamps
    end
  end

  def self.down
    drop_table :estado_despachos
  end
end
