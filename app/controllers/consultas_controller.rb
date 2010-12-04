# encoding: utf-8
class ConsultasController < ApplicationController
  before_filter :verificar_usuario
  def index

  end

  def clientes
    @cliente = nil
    if params[:cliente_id]
      @cliente = Cliente.find(params[:cliente_id])
    end
  end

  def codigo
    @orden = nil
    if params[:orden_servicio]
      @orden = Carpeta.find_by_orden_servicio(params[:orden_servicio])
    end
  end
end
