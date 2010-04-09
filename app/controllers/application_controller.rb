# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.


class ApplicationController < ActionController::Base

  helper :all
  helper_method :current_user_session, :current_user
  filter_parameter_logging :password, :password_confirmation
  before_filter :require_user





  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end

    def require_user
      unless current_user
        store_location
        flash[:notice] = "Você precisa estar logado para acessar essa página"
        redirect_to new_user_session_url
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "Você precisa estar deslogado para acessar essa página"
        redirect_to account_url
        return false
      end
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end

    def logged_in?
      raise "Can not determine the records login state because there is no last_request_at column" if !respond_to?(:last_request_at)
      !last_request_at.nil? && last_request_at > logged_in_timeout.seconds.ago
    end

    def logged_out?
      !logged_in?
    end


rescue_from 'Acl9::AccessDenied', :with => :access_denied

def access_denied
  if current_user
    render :template => 'acesso_negado'
  else
    flash[:notice] = 'Acesso negado. Você precisa estar logado.'
    redirect_to login_path
  end
end


end

