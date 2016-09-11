class UsersController < ApplicationController

    def sold_order
        sweater = Sweater.find(params[:sweater_id])
        order = sweater.order
        order.update_attributes(completed: true)
        user = User.create
        user.direction = params[:direction]
        user.name = params[:name]
        user.email = params[:email]
        user.direction = user[:direction]
        user.orders.push(order)
        user.save
        order.save
        redirect_to sold_cart_path(order.id)
    end

end
