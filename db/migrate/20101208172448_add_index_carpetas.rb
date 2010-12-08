class AddIndexCarpetas < ActiveRecord::Migration
  def self.up
    add_index :carpetas, :orden_servicio
    add_index :carpetas, :nro_carpeta
  end

  def self.down
  end
end
