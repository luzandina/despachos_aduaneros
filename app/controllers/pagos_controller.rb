# encoding: utf-8
class PagosController < ApplicationController
  before_filter :verificar_usuario
  # GET /pagos
  # GET /pagos.xml
  def index
    @pagos = Pago.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pagos }
    end
  end

  # GET /pagos/1
  # GET /pagos/1.xml
  def show
    @pago = Pago.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pago }
    end
  end

  # GET /pagos/new
  # GET /pagos/new.xml
  def new
    saldo = Liquidacion.find(params[:liquidacion_id]).saldo
    @pago = Pago.new(:liquidacion_id => params[:liquidacion_id], :cantidad => saldo)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pago }
    end
  end

  # GET /pagos/1/edit
  def edit
    @pago = Pago.find(params[:id])
  end

  # POST /pagos
  # POST /pagos.xml
  def create
    @pago = Pago.new(params[:pago])

    respond_to do |format|
      if @pago.save
        format.html { render :text => @pago.attributes.merge( :saldo => @pago.saldo ).to_json }
        format.xml  { render :xml => @pago, :status => :created, :location => @pago }
      else
        format.html { render :action => "new", :status => :unprocessable_entity }
        format.xml  { render :xml => @pago.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pagos/1
  # PUT /pagos/1.xml
  def update
    @pago = Pago.find(params[:id])

    respond_to do |format|
      if @pago.update_attributes(params[:pago])
        format.html { redirect_to(@pago, :notice => 'Pago was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pago.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1
  # DELETE /pagos/1.xml
  def destroy
    @pago = Pago.find(params[:id])
    @pago.destroy

    respond_to do |format|
      format.html { redirect_to(pagos_url) }
      format.xml  { head :ok }
    end
  end
end
