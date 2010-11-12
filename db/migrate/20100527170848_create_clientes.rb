class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nombre, :limit => 150
      t.string :nit_ci, :limit => 15
      t.string :direccion, :limit => 100
      t.string :telefono, :limit => 50
      t.string :email, :limit => 200
      t.date :fecha 
      t.string :comision, :limit => 50
      t.integer :proveedor_id
      t.string :parte_recepcion, :limit => 50
      t.string :descripcion, :limit => 3000
      t.integer :paise_id
      t.integer :departamento_id
      
      t.timestamps
    end
    
    add_index :clientes, :proveedor_id
    add_index :clientes, :paise_id
    add_index :clientes, :departamento_id
  end

  def self.down
    drop_table :clientes
  end
end
