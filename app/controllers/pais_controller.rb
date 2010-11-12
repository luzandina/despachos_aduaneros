# encoding: utf-8
class PaisController < ApplicationController
  # GET /pais
  # GET /pais.xml
  def index
    @pais = Pai.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pais }
    end
  end

  # GET /pais/1
  # GET /pais/1.xml
  def show
    @pai = Pai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pai }
    end
  end

  # GET /pais/new
  # GET /pais/new.xml
  def new
    @pai = Pai.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pai }
    end
  end

  # GET /pais/1/edit
  def edit
    @pai = Pai.find(params[:id])
  end

  # POST /pais
  # POST /pais.xml
  def create
    @pai = Pai.new(params[:pai])

    respond_to do |format|
      if @pai.save
        flash[:notice] = 'El pais fue creado.'
        format.html { redirect_to(@pai) }
        format.xml  { render :xml => @pai, :status => :created, :location => @pai }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pais/1
  # PUT /pais/1.xml
  def update
    @pai = Pai.find(params[:id])

    respond_to do |format|
      if @pai.update_attributes(params[:pai])
        flash[:notice] = 'El pais fue actualizado.'
        format.html { redirect_to(@pai) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pais/1
  # DELETE /pais/1.xml
  def destroy
    @pai = Pai.find(params[:id])
    @pai.destroy

    respond_to do |format|
      format.html { redirect_to(pais_url) }
      format.xml  { head :ok }
    end
  end
end
