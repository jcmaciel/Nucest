class UsersController < ApplicationController
 skip_before_filter :require_no_user, :only => [:new, :create]
 before_filter :require_user, :only => [:show, :edit, :update]

  access_control do
    allow :admin
    allow :normal, :to => [:index, :show, :edit, :update]
  end
#     access_control do
#      allow :superadmin
#      allow :owner, :of => :secret
#
#      action :index do
#        allow anonymous, logged_in
#      end
#
#      allow logged_in, :to => :show
#      allow :manager, :of => :secret, :except => [:delete, :destroy]
#      deny :thiefs
#    end

   def new
       @user = User.new
   end

    def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end


   def create
     @user = User.new(params[:user])
     if @user.tipo_de_usuario = "5"
       @user.has_role! :admin
        else
           @user.has_role! :normal
         end
     if @user.save
       flash[:notice] = "Usuário cadastrado com sucesso."
       redirect_to root_url
     else
   render :action => 'new'
  end
 end

 def edit
   if current_user.admin?
     @user = User.find(params[:id])
   else
   @user = current_user
   end
   end

def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(root_url) }
      flash[:notice] = "Deletado com sucesso."
      format.xml  { head :ok }
    end
  end

 def update
   @user = current_user
   if @user.update_attributes(params[:user])
     flash[:notice] = "Atualizado com sucesso."
     redirect_to root_url
   else
     render :action => 'edit'
   end
 end

end

