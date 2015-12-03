class SessionsController < ApplicationController
  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    session[:user_uid] = user.uid
    session[:user_name] = user.name
    session[:user] = user
    session[:user_isDriver] = user.driver
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end