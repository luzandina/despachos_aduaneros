class AddDocumentosDescripcionDocumento < ActiveRecord::Migration
  def self.up
    add_column :documentos, :descripcion_documentos, :string, :limit => 1000
  end

  def self.down
    remove_column :documentos, :descripcion_documentos
  end
end
