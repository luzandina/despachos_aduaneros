class CreatePagos < ActiveRecord::Migration
  def self.up
    create_table :pagos do |t|
      t.integer :liquidacion_id
      t.date :fecha
      t.decimal :cantidad, :precision => 12, :scale => 2
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :pagos
  end
end
