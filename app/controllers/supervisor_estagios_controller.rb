class SupervisorEstagiosController < ApplicationController
  # GET /supervisor_estagios
  # GET /supervisor_estagios.xml
  def index
    @supervisor_estagios = SupervisorEstagio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supervisor_estagios }
    end
  end

  # GET /supervisor_estagios/1
  # GET /supervisor_estagios/1.xml
  def show
    @supervisor_estagio = SupervisorEstagio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supervisor_estagio }
      format.json {render :json => @supervisor_estagio }
    end
  end

  # GET /supervisor_estagios/new
  # GET /supervisor_estagios/new.xml
  def new
    @supervisor_estagio = SupervisorEstagio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @supervisor_estagio }
    end
  end

  # GET /supervisor_estagios/1/edit
  def edit
    @supervisor_estagio = SupervisorEstagio.find(params[:id])
  end

  # POST /supervisor_estagios
  # POST /supervisor_estagios.xml
  def create
    @supervisor_estagio = SupervisorEstagio.new(params[:supervisor_estagio])

    respond_to do |format|
      if @supervisor_estagio.save
        flash[:notice] = 'Supervisor de Estagio cadastrado com sucesso.'
        format.html { redirect_to(@supervisor_estagio) }
        format.xml  { render :xml => @supervisor_estagio, :status => :created, :location => @supervisor_estagio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @supervisor_estagio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /supervisor_estagios/1
  # PUT /supervisor_estagios/1.xml
  def update
    @supervisor_estagio = SupervisorEstagio.find(params[:id])

    respond_to do |format|
      if @supervisor_estagio.update_attributes(params[:supervisor_estagio])
        flash[:notice] = 'Supervisor de Estagio atualizado com sucesso.'
        format.html { redirect_to(@supervisor_estagio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supervisor_estagio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisor_estagios/1
  # DELETE /supervisor_estagios/1.xml
  def destroy
    @supervisor_estagio = SupervisorEstagio.find(params[:id])
    @supervisor_estagio.destroy

    respond_to do |format|
      format.html { redirect_to(supervisor_estagios_url) }
      format.xml  { head :ok }
    end
  end
end

