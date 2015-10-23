class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
    end
    
    def create 
        @order = Order.new(order_params) 
        if @order.save 
            redirect_to '/orders' 
        else 
            render 'new' 
        end 
    end
    
    private 
    def order_params 
        params.require(:order).permit(:content) 
    end
    
end
