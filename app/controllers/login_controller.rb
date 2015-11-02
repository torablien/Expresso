class LoginController < ApplicationController
    def index
    end
    
    def setCurrUserID
        Rails.application.config.currUserID = params[:newCurrUserID]
        redirect_to '/login'
    end
end
