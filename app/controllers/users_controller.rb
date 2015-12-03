class UsersController < ApplicationController
    def index
        @users = User.all
        @orders = Order.all
       
   end
    
    def new
        @user = User.new
    end
    
    def create 
        @user = User.new(user_params) 
        @user.isDriver = true
        if @user.save
            redirect_to "/login"
        else 
            render 'new' 
        end 
    end
    
    
    private 
    def user_params 
        params.require(:user).permit(:name, :username, :email, :address, :isDriver) 
    end
end
