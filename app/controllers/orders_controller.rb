class OrdersController < ApplicationController
    before_filter :requireLogin
    
    def requireLogin
        if session[:user_id] == nil
            redirect_to "/"
        end
    end
    
    def index
        @orders = Order.all
    end
    
    def new
        @order = Order.new
    end
    
    def edit
        @currOrder = Order.find(params[:id])
    end
    
    
    def create 
        @order = Order.new(order_params) 
        @order.createdByID = session[:user_id]
        if @order.restaurant == "http://www.starbucks.com/menu"
            @order.restaurant = "Starbucks"
        end
        if @order.restaurant == "http://www.pjscoffee.com/beverages.php"
            @order.restaurant = "PJs Coffee"
        end
        if @order.restaurant == "http://www.cafedumonde.com/coffee"
            @order.restaurant = "Cafe Du Monde"
        end
        if @order.save 
            redirect_to '/orders' 
        else 
            render 'new' 
        end 
    end
    
    def update
        @currOrder = Order.find(params[:id])
        if @currOrder.update_attributes(order_params) 
            if @currOrder.restaurant == "http://www.starbucks.com/menu"
                @currOrder.restaurant = "Starbucks"
            end
            if @currOrder.restaurant == "http://www.pjscoffee.com/beverages.php"
                @currOrder.restaurant = "PJs Coffee"
            end
            if @currOrder.restaurant == "http://www.cafedumonde.com/coffee"
                @currOrder.restaurant = "Cafe Du Monde"
            end
            @currOrder.save
            redirect_to '/orders' 
        else 
            render 'edit' 
        end 
    end
    
    private 
    def order_params 
        params.require(:order).permit(:content, :time, :name, :location, :restaurant) 
    end
    
end
