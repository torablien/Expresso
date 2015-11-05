class LoginController < ApplicationController
    def index
    end
    
    def isInt(string)
      true if Float(string) rescue false
    end
    
    def setCurrUserID
        if isInt(params[:newCurrUserID])
            Rails.application.config.currUserID = params[:newCurrUserID].to_i
        end
        redirect_to '/login'
    end
end
