class PaisesController < ApplicationController
  before_filter :verificar_usuario
  # GET /paises
  # GET /paises.xml
  def index
    @paises = Paise.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paises }
    end
  end

  # GET /paises/1
  # GET /paises/1.xml
  def show
    @paise = Paise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paise }
    end
  end

  # GET /paises/new
  # GET /paises/new.xml
  def new
    @paise = Paise.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paise }
    end
  end

  # GET /paises/1/edit
  def edit
    @paise = Paise.find(params[:id])
  end

  # POST /paises
  # POST /paises.xml
  def create
    @paise = Paise.new(params[:paise])

    respond_to do |format|
      if @paise.save
        format.html { redirect_to(@paise, :notice => 'Paise was successfully created.') }
        format.xml  { render :xml => @paise, :status => :created, :location => @paise }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paises/1
  # PUT /paises/1.xml
  def update
    @paise = Paise.find(params[:id])

    respond_to do |format|
      if @paise.update_attributes(params[:paise])
        format.html { redirect_to(@paise, :notice => 'Paise was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paises/1
  # DELETE /paises/1.xml
  def destroy
    @paise = Paise.find(params[:id])
    @paise.destroy

    respond_to do |format|
      format.html { redirect_to(paises_url) }
      format.xml  { head :ok }
    end
  end
end
