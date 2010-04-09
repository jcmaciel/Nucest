class BolsistasController < ApplicationController
  # GET /bolsistas
  # GET /bolsistas.xml
  def index
    @bolsistas = Bolsista.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bolsistas }
    end
  end

  # GET /bolsistas/1
  # GET /bolsistas/1.xml
  def show
    @bolsista = Bolsista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bolsista }

    end
  end

  # GET /bolsistas/new
  # GET /bolsistas/new.xml
  def new
    @bolsista = Bolsista.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bolsista }
    end
  end

  # GET /bolsistas/1/edit
  def edit
    @bolsista = Bolsista.find(params[:id])
  end

  # POST /bolsistas
  # POST /bolsistas.xml
  def create
    @bolsista = Bolsista.new(params[:bolsista])

    respond_to do |format|
      if @bolsista.save
        flash[:notice] = 'Bolsista foi cadastrado com sucesso.'
        format.html { redirect_to(@bolsista) }
        format.xml  { render :xml => @bolsista, :status => :created, :location => @bolsista }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bolsista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bolsistas/1
  # PUT /bolsistas/1.xml
  def update
    @bolsista = Bolsista.find(params[:id])

    respond_to do |format|
      if @bolsista.update_attributes(params[:bolsista])
        flash[:notice] = 'Bolsista foi atualizado com sucesso.'
        format.html { redirect_to(@bolsista) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bolsista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bolsistas/1
  # DELETE /bolsistas/1.xml
  def destroy
    @bolsista = Bolsista.find(params[:id])
    @bolsista.destroy

    respond_to do |format|
      format.html { redirect_to(bolsistas_url) }
      format.xml  { head :ok }
    end
  end
   def obter_cidades
    @cidades = Cidade.find_all_by_estado_id(params[:estado_id], :order => :nome)
    render :partial => 'cidades'
  end
end

