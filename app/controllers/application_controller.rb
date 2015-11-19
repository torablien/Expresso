class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :setCurrUserDisplay, :except => [:create, :update, :destroy]
  
  def setCurrUserDisplay
    
    if User.exists?(session[:user_id])
        @currUserDisplay = "Hello, " + /([^\s]+)/.match(User.find(session[:user_id]).name).to_s
        @isLoggedIn = true
    else
        @currUserDisplay = "Login"
        @isLoggedIn = false
    end
    
    

  end
  
end
