# encoding: utf-8
class PersonalsController < ApplicationController
  before_filter :verificar_usuario
  # GET /personals
  # GET /personals.xml
  def index
    @personals = Personal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personals }
    end
  end

  # GET /personals/1
  # GET /personals/1.xml
  def show
    @personal = Personal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personal }
    end
  end

  # GET /personals/new
  # GET /personals/new.xml
  def new
    @personal = Personal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personal }
    end
  end

  # GET /personals/1/edit
  def edit
    @personal = Personal.find(params[:id])
  end

  # POST /personals
  # POST /personals.xml
  def create
    @personal = Personal.new(params[:personal])

    respond_to do |format|
      if @personal.save
        flash[:notice] = 'El Personal fue creado.'
        format.html { redirect_to(@personal) }
        format.xml  { render :xml => @personal, :status => :created, :location => @personal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personals/1
  # PUT /personals/1.xml
  def update
    @personal = Personal.find(params[:id])

    respond_to do |format|
      if @personal.update_attributes(params[:personal])
        flash[:notice] = 'El Personal fue actualizado correctamente.'
        format.html { redirect_to(@personal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.xml
  def destroy
    @personal = Personal.find(params[:id])
    @personal.destroy

    respond_to do |format|
      format.html { redirect_to(personals_url) }
      format.xml  { head :ok }
    end
  end
end
