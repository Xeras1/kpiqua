class OrdersController < ApplicationController
protect_from_forgery with: :null_session
    def new_order
        sweater = Sweater.create
        pocket = Pocket.find(params[:pocket_id])
        base = Base.find(params[:base_id])
        base.sweaters.push(sweater)
        pocket.sweaters.push(sweater)
        order = Order.create
        order.sweaters.push(sweater)
        redirect_to order_cart_path(order.id)
    end

    def update_order
        sweater = Sweater.find(params[:id])
        
        sweater.update_attributes(size: params[:size])
        redirect_to sell_cart_path(sweater.order_id)
    end
end
