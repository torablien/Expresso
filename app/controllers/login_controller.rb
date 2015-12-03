class LoginController < ApplicationController
    def index
    end
    
    def setCurrUserID
            if User.exists?(:username => params[:newCurrUserID])
                session[:user_id] = User.find_by_username(params[:newCurrUserID]).id
                redirect_to '/'
            else
                flash[:login] = "User does not exist"
                redirect_to '/login'
            end
            
        
    end
end
