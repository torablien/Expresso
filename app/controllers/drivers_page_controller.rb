class DriversPageController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def accept
        Orders.each do |obj|
            @accepted.push(obj) if obj.checked
        end
    end
end
