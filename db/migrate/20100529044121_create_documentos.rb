class CreateDocumentos < ActiveRecord::Migration
  def self.up
    create_table :documentos do |t|
      t.integer :orden_servicio
      t.integer :nro_carpeta
      t.string :liquidador
      t.date :fecha
      t.string :mercancia
      t.string :peso
      t.string :documento
      t.string :tipo_documento
      t.integer :cliente_id
      t.integer :carpeta_id
      t.integer :orden_servicio_id
      t.integer :personal_id
      t.integer :t_doc_id

      t.timestamps
    end
    add_index :documentos, :carpeta_id
    end

  def self.down
    drop_table :documentos
  end
end
