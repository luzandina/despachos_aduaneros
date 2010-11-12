class CreateTipoDocumentos < ActiveRecord::Migration
  def self.up
    create_table :tipo_documentos do |t|
      t.string :tipo_doc
      t.integer :t_doc_id
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_documentos
  end
end
