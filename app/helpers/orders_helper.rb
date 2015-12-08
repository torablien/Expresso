module OrdersHelper
    def cancel_order
        re = Stripe::Refund.create(
            charge: @currOrder.charge
        )
        Order.update(@currOrder.id, :isDone => true)
    end
end
