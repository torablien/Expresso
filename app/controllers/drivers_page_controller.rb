class DriversPageController < ApplicationController
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
                 Order.update(x[0], :acceptedByID => Rails.application.config.currUserID)
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
                 Order.update(x[0], :acceptedByID => -999)
            end
        else
            flash[:checked] = "No orders were selected"    
        end
        redirect_to '/drivers/accept'
    end
end
