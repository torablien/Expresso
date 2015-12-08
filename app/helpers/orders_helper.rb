module OrdersHelper
    def cancel_order
        re = Stripe::Refund.create(
            charge: @currOrder.charge
        )
        Order.update(@currOrder.id, :isDone => true, :acceptedByID => -99)
    end
end
