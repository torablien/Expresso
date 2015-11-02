class DriversPageController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def accept
        Orders.each do |obj|
            if obj.checked
                obj.accepted == true
            end
        end
    end
    
    def acceptOrders
        puts "PRINTING:"
        puts params[:selectedOrders]
        #Order.destroy(params[:selectedOrders])
        redirect_to '/drivers'
    end
end
