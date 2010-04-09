class EstagiosController < ApplicationController
  # GET /estagios
  # GET /estagios.xml
  def index
    @estagios = Estagio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estagios }
    end
  end

  # GET /estagios/1
  # GET /estagios/1.xml
  def show
    @estagio = Estagio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estagio }
    end
  end

  # GET /estagios/new
  # GET /estagios/new.xml
  def new
    @estagio = Estagio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estagio }
    end
  end

  # GET /estagios/1/edit
  def edit
    @estagio = Estagio.find(params[:id])
  end

  # POST /estagios
  # POST /estagios.xml
  def create
    @estagio = Estagio.new(params[:estagio])

    respond_to do |format|
      if @estagio.save
        flash[:notice] = 'Estagio was successfully created.'
        format.html { redirect_to(@estagio) }
        format.xml  { render :xml => @estagio, :status => :created, :location => @estagio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estagio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estagios/1
  # PUT /estagios/1.xml
  def update
    @estagio = Estagio.find(params[:id])

    respond_to do |format|
      if @estagio.update_attributes(params[:estagio])
        flash[:notice] = 'Estagio was successfully updated.'
        format.html { redirect_to(@estagio) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estagio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estagios/1
  # DELETE /estagios/1.xml
  def destroy
    @estagio = Estagio.find(params[:id])
    @estagio.destroy

    respond_to do |format|
      format.html { redirect_to(estagios_url) }
      format.xml  { head :ok }
    end
  end
end
