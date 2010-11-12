# encoding: utf-8
class Usuario < ActiveRecord::Base
  # Callback, llamada al metodo antes de salvar
  before_save :encriptar_password

  # Valida la precensia de los campos
  validates_presence_of :nombres, :paterno, :materno, :email, :password
  
  # Crea una variable @password_confirmation
  attr_accessor :password_confirmation
  def self.buscar_email_password(e,p)
    p = Digest::MD5.hexdigest(p)
    first(:conditions => {:email => e, :password => p})
  end

  def to_s
    nombre_completo
  end

  def nombre_completo
    %(#{nombres} #{paterno} #{materno})
  end

private
  def encriptar_password
    self.password = Digest::MD5.hexdigest(password)
  end

end
