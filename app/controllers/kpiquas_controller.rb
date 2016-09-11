class KpiquasController < ApplicationController

	def homepage
        @order = Order.last
		
	end

    def cart
        @base_images = []
        @pocket_images = []
        @base_info = []
        @pocket_info = []
        @sweater_ids = []
        order = Order.find(params[:order_id])
        sweaters = order.sweaters

        sweaters.each do |sweater|
            @base_images.push(sweater.base.image)
            @pocket_images.push(sweater.pocket.image)
            @base_info.push(sweater.base)
            @pocket_info.push(sweater.pocket)
            @sweater_ids.push(sweater.id)
        end
    end

    def sell
        @base_images = []
        @pocket_images = []
        @base_info = []
        @pocket_info = []
        @sweater_ids = []
        order = Order.find(params[:order_id])
        @sweaters = order.sweaters

        @sweaters.each do |sweater|
            @base_images.push(sweater.base.image)
            @pocket_images.push(sweater.pocket.image)
            @base_info.push(sweater.base)
            @pocket_info.push(sweater.pocket)
            @sweater_ids.push(sweater.id)
        end
    end

    def sold
        order = Order.find(params[:order_id])
        @user = order.user
        
    end
end
