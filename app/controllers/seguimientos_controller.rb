# encoding: utf-8
class SeguimientosController < ApplicationController
  before_filter :verificar_usuario
  # GET /seguimientos
  # GET /seguimientos.xml
  def index
    @seguimientos = Seguimiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seguimientos }
    end
  end

  # GET /seguimientos/1
  # GET /seguimientos/1.xml
  def show
    @seguimiento = Seguimiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seguimiento }
    end
  end

  # GET /seguimientos/new
  # GET /seguimientos/new.xml
  def new
    @seguimiento = Seguimiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seguimiento }
    end
  end

  # GET /seguimientos/1/edit
  def edit
    @seguimiento = Seguimiento.find(params[:id])
  end

  # POST /seguimientos
  # POST /seguimientos.xml
  def create
    @seguimiento = Seguimiento.new(params[:seguimiento])

    respond_to do |format|
      if @seguimiento.save
        format.html { redirect_to(@seguimiento, :notice => 'Seguimiento was successfully created.') }
        format.xml  { render :xml => @seguimiento, :status => :created, :location => @seguimiento }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seguimiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seguimientos/1
  # PUT /seguimientos/1.xml
  def update
    @seguimiento = Seguimiento.find(params[:id])

    respond_to do |format|
      if @seguimiento.update_attributes(params[:seguimiento])
        format.html { redirect_to(@seguimiento, :notice => 'Seguimiento was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seguimiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seguimientos/1
  # DELETE /seguimientos/1.xml
  def destroy
    @seguimiento = Seguimiento.find(params[:id])
    @seguimiento.destroy

    respond_to do |format|
      format.html { redirect_to(seguimientos_url) }
      format.xml  { head :ok }
    end
  end
end
