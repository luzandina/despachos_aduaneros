class CreateProveedors < ActiveRecord::Migration
  def self.up
    create_table :proveedors do |t|
      t.string :nombre
      t.string :pais
      t.string :ciudad
      t.string :direccion
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :proveedors
  end
end
