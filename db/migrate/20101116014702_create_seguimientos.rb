class CreateSeguimientos < ActiveRecord::Migration
  def self.up
    create_table :seguimientos do |t|
      t.integer :recinto
      t.string :regimen, :limit => 10
      t.date :elaboracion_dav
      t.date :elaboracion_dui
      t.date :validacion_dui
      t.string :numero_registro
      t.date :pago_tributos
      t.string :canal, :limit => 100
      t.date :impresion_dui_dav
      t.date :presentacion_carpeta
      t.date :asignacion_tecnico
      t.date :levante_mercancia
      t.date :pago_almacenaje_entrega
      t.date :facturacion
      t.string :observaciones, :string => 1000
      t.integer :carpeta_id

      t.timestamps
    end

    add_index :seguimientos, :carpeta_id
  end

  def self.down
    drop_table :seguimientos
  end
end
