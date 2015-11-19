class DriversPageController < ApplicationController
    before_filter :requireLogin
    
    def index
        @orders = Order.all
    end
    
    def accept
       @orders = Order.all
    end
    
    def acceptOrders
        @workaround = params[:selectedOrders]
        if @workaround != nil
            @workaround.each do |x|
                 Order.update(x[0], :acceptedByID => session[:user_id])
            end
            redirect_to '/drivers/accept'
        else
            flash[:checked] = "No orders were selected"
            redirect_to '/drivers'
        end
    end
    
    def finishOrders
        @finishThese = params[:doneOrders]
        if @finishThese != nil
            @finishThese.each do |x|
                 Order.update(x[0], :isDone => true)
            end
        else
            flash[:checked] = "No orders were selected"    
        end
        redirect_to '/drivers/accept'
    end
end
