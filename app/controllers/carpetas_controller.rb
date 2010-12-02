# encoding: utf-8
class CarpetasController < ApplicationController
  before_filter :verificar_usuario

  # GET /carpetas
  # GET /carpetas.xml
  def index
    @carpetas = Carpeta.includes(:personal, :cliente).paginate(:page => @page)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carpetas }
    end
  end

  # GET /carpetas/1
  # GET /carpetas/1.xml
  def show
    @carpeta = Carpeta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carpeta }
    end
  end

  # GET /carpetas/new
  # GET /carpetas/new.xml
  def new
    @carpeta = Carpeta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carpeta }
    end
  end

  # GET /carpetas/1/edit
  def edit
    @carpeta = Carpeta.find(params[:id])
  end

  # POST /carpetas
  # POST /carpetas.xml
  def create
    @carpeta = Carpeta.new(params[:carpeta])

    respond_to do |format|
      if @carpeta.save
        flash[:notice] = 'La carpeta fue habilitada.'
        format.html { redirect_to(@carpeta) }
        format.xml  { render :xml => @carpeta, :status => :created, :location => @carpeta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carpeta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carpetas/1
  # PUT /carpetas/1.xml
  def update
    @carpeta = Carpeta.find(params[:id])

    respond_to do |format|
      if @carpeta.update_attributes(params[:carpeta])
        flash[:notice] = 'La carpeta fue asignada.'
        format.html { redirect_to(@carpeta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carpeta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carpetas/1
  # DELETE /carpetas/1.xml
  def destroy
    @carpeta = Carpeta.find(params[:id])
    @carpeta.destroy

    respond_to do |format|
      format.html { redirect_to(carpetas_url) }
      format.xml  { head :ok }
    end
  end

  # GET /carpetas/:id/datos
  # Obtiene datods de la carpeta
  def datos
    @carpeta = Carpeta.find(params[:id])
    render :text => { :cliente => @carpeta.cliente.to_s, :liquidador => @carpeta.personal.to_s }.to_json
  end
end
