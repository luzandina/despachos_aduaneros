# encoding: utf-8
class TipoDocumento < ActiveRecord::Base
  # metodo que por defecto presenta el string
  has_many :documentos
  
  # metodo que por defecto presenta el string
  def to_s
    tipo_doc
  end
end
