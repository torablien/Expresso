class LoginController < ApplicationController
    def index
    end
    
    def setCurrUserID
        Rails.application.config.currUserID = params[:newCurrUserID].to_i
        redirect_to '/login'
    end
end
