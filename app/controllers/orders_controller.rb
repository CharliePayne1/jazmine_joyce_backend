class OrdersController < ApplicationController

    def index
        orders = Print.all
        render json: orders
    end

    def create
        @order = order.create(order_params)
        if @order.valid?
          render json: { order: @order }, status: :created
        else
          render json: { error: @order.errors.full_messages }, status: :not_acceptable
        end
    end

    private 

    def order_params
        params.require(:order).permit(:name, :price, :delivery_date, :print_id)
    end


end
