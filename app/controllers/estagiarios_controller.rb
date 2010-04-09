class EstagiariosController < ApplicationController
  # GET /estagiarios
  # GET /estagiarios.xml
  def index
    @estagiarios = Estagiario.paginate(:all, :order => "id DESC", :per_page => 1, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estagiarios }
      format.js
    end
  end

  # GET /estagiarios/1
  # GET /estagiarios/1.xml
  def show
    @estagiario = Estagiario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estagiario }

    end
  end

  # GET /estagiarios/new
  # GET /estagiarios/new.xml
  def new
    @estagiario = Estagiario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estagiario }
    end
  end

  # GET /estagiarios/1/edit
  def edit
    @estagiario = Estagiario.find(params[:id])
  end

  # POST /estagiarios
  # POST /estagiarios.xml
  def create
    @estagiario = Estagiario.new(params[:estagiario])

    respond_to do |format|
      if @estagiario.save
        flash[:notice] = 'Estagiario foi criado com sucesso.'
        format.html { redirect_to(@estagiario) }
        format.xml  { render :xml => @estagiario, :status => :created, :location => @estagiario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estagiario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estagiarios/1
  # PUT /estagiarios/1.xml
  def update
    @estagiario = Estagiario.find(params[:id])

    respond_to do |format|
      if @estagiario.update_attributes(params[:estagiario])
        flash[:notice] = 'Estagiario foi atualizado com sucesso.'
        format.html { redirect_to(@estagiario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estagiario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estagiarios/1
  # DELETE /estagiarios/1.xml
  def destroy
    @estagiario = Estagiario.find(params[:id])
    @estagiario.destroy

    respond_to do |format|
      format.html { redirect_to(estagiarios_url) }
      format.xml  { head :ok }
    end
  end

  def obter_cidades
    @cidades = Cidade.find_all_by_estado_id(params[:estado_id], :order => :nome)
    render :partial => 'cidades'
  end

end

