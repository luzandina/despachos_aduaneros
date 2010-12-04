# encoding: utf-8
class EstadoDespachosController < ApplicationController
  before_filter :verificar_usuario
  # GET /estado_despachos
  # GET /estado_despachos.xml
  def index
    @estado_despachos = EstadoDespacho.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estado_despachos }
    end
  end

  # GET /estado_despachos/1
  # GET /estado_despachos/1.xml
  def show
    @estado_despacho = EstadoDespacho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estado_despacho }
    end
  end

  # GET /estado_despachos/new
  # GET /estado_despachos/new.xml
  def new
    @estado_despacho = EstadoDespacho.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estado_despacho }
    end
  end

  # GET /estado_despachos/1/edit
  def edit
    @estado_despacho = EstadoDespacho.find(params[:id])
  end

  # POST /estado_despachos
  # POST /estado_despachos.xml
  def create
    @estado_despacho = EstadoDespacho.new(params[:estado_despacho])

    respond_to do |format|
      if @estado_despacho.save
        flash[:notice] = 'El Estado Despacho fue creado.'
        format.html { redirect_to(@estado_despacho) }
        format.xml  { render :xml => @estado_despacho, :status => :created, :location => @estado_despacho }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estado_despacho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estado_despachos/1
  # PUT /estado_despachos/1.xml
  def update
    @estado_despacho = EstadoDespacho.find(params[:id])

    respond_to do |format|
      if @estado_despacho.update_attributes(params[:estado_despacho])
        flash[:notice] = 'El Estado Despacho fue actualizado.'
        format.html { redirect_to(@estado_despacho) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estado_despacho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_despachos/1
  # DELETE /estado_despachos/1.xml
  def destroy
    @estado_despacho = EstadoDespacho.find(params[:id])
    @estado_despacho.destroy

    respond_to do |format|
      format.html { redirect_to(estado_despachos_url) }
      format.xml  { head :ok }
    end
  end
end
