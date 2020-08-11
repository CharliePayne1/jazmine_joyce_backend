class PrintsController < ApplicationController

    def index
        prints = Print.all
        render json: prints
    end

    def create
        @print = Print.create(print_params)
        if @print.valid?
          render json: { print: @print }, status: :created
        else
          render json: { error: @print.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        @print = Print.find(params[:id])
        @print.destroy
        render json: { print: "Print deleted!" }, status: :accepted
    end

    def update
        @print = Print.find(params[:id])
        @print.update(print_params)
        if @print.valid?
          render json: { print: @print }, status: :created
        else
          render json: { error: @print.errors.full_messages }, status: :not_acceptable
        end
    end

    private 

    def print_params
        params.require(:print).permit(:name, :description, :price, :colour, :size, :delivery_days)
    end
    
end
