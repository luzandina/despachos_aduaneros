class CreatePersonals < ActiveRecord::Migration
  def self.up
    create_table :personals do |t|
      t.string :nombres, :limit => 100
      t.string :paterno, :limit => 50
      t.string :materno, :limit => 50
      t.string :cedula_identidad, :limit => 10
      t.string :direccion, :limit => 100
      t.string :cargo, :limit => 50
      t.string :email, :limit => 200
      t.date :fecha_ingreso 
      t.date :fecha_salida 
      t.string :sueldo, :limit => 100
      t.string :telefono, :limit => 100
      t.integer :personal_id

      t.timestamps
    end
  end

  def self.down
    drop_table :personals
  end
end
