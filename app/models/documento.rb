# encoding: utf-8
class Documento < ActiveRecord::Base

  before_save :adicionar_documento

  # Relacion con carpeta, cliente, personal, tipo_doc
  belongs_to :carpeta
  belongs_to :cliente
  belongs_to :personal
  belongs_to :tipo_documento

  # Serializacion (Convertirlo en vector)
  serialize :documento


  # relacion de 1 a varios 
  has_many :liquidacions
  
  # Valida la precensia de los campos
  validates_presence_of  :carpeta_id

  TIPOS = [ 'Fotocopia', 'Original', 'Fax', 'Legalizado' ]

  DOCUMENTOS = { 
    'fm' => 'Factura Comercial',
    'fr' => 'Factura Reexpedicion',
    'le' => 'Lista de Empaque',
    'bl' => 'Bill of Leading',
    'ps' => 'Poliza de Seguro',
    'co' => 'Certificado de Origen',
    'gp' => 'Gastos Portuarios ASPB',
    'crt' => 'Carta Porte (CRT)',
    'ma' => 'Manifiesto Inter.Carga(MIC)',
    'ft' => 'Factura de Transporte',
    'ctr' => 'Contrato de Transporte',
    'pr' => 'Parte Recepción',
    'mi' => 'Certificado Min.Salud',
    'cs' => 'Certificado SENASAC', 
    'cib' => 'Certificado IBMETRO',
    'ga' => 'Guia Aerea',
    'cf' => 'Certificado de Flete',   
    'ci' => 'Cedula de Identidad',
    'pn' => 'Poder Notarial',
    'nit' => 'NIT',
    'sl' => 'Solicitud de Liberacion',
    'cv' => 'Certificado de valor',
    'fre' => 'Form.Reacondicionamiento',
    'eg' => 'Emision de Gases',
    'fin' => 'Form.Insp.Fisica',
    
  }

  def adicionar_documento
    self.documento = {} if documento.blank?
  end
  
end
