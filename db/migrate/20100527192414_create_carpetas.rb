class CreateCarpetas < ActiveRecord::Migration
  def self.up
    create_table :carpetas do |t|
      t.string :orden_servicio, :limit => 50
      t.string :nro_carpeta, :limit => 50
      t.date :fecha
      t.string :liquidador, :limit => 100
      t.integer :personal_id
      t.integer :cliente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :carpetas
  end
end
