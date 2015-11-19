class LoginController < ApplicationController
    def index
    end
    
    def setCurrUserID
            if User.exists?(:username => params[:newCurrUserID])
                session[:user_id] = User.find_by_username(params[:newCurrUserID]).id
            else
                flash[:login] = "User does not exist"
            end
        redirect_to '/login'
    end
end
