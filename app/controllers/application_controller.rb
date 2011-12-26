class ApplicationController < ActionController::Base
  #protect_from_forgery
 # helper :all
before_filter :setup_session_key
 # session :session_key => '_ProjectManagement_session_id' 
protected
    def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'home', :action => 'login')
      return false # halts the before_filter
    else
      return true
    end
  end
   def setup_session_key
      # Pick a unique cookie name to distinguish our session data from others'
      request.session_options[:session_key] = '_ProjectManagement_session_id'
    end

  
end
