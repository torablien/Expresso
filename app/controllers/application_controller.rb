class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :setCurrUserDisplay, :except => [:create, :update, :destroy]
  
  def setCurrUserDisplay
    if User.exists?(Rails.application.config.currUserID)
        @currUserDisplay = /([^\s]+)/.match(User.find(Rails.application.config.currUserID).name)
    else
        @currUserDisplay = "User #" + Rails.application.config.currUserID.to_s
    end
  end
  
end
