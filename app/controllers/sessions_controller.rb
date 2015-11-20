class SessionsController < ApplicationController
<<<<<<< HEAD
      def create
        user = User.omniauth(env['omniauth.auth'])
        session[:user_id] = user.id
        redirect_to root_url
      end
    
      def destroy
        session[:user_id] = nil
      end
end
=======
  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
>>>>>>> eda1b488f595cb1a0daa15ab14d2740ca1de2f2d
