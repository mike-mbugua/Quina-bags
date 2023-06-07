class WomenWearsController < ApplicationController
    def index
        womenWear=WomenWear.all;
        render json: womenWear, status: :ok
    end

    def show
        womenWear=WomenWear.find(params[:id]);
        render json: womenWear, status: :found
    end

    def create
        womenWear=WomenWear.create(womenwear_params)
        render json: womenWear, status: :created
    end


    def destroy
        womenWear= WomenWear.find(params[:id])
        womenWear.destroy
    end

    def update
        womenWear=WomenWear.find(params[:id])
        womenWear.update(womenwear_params)
        render json: womenWear
    end

    private
    def womenwear_params
        params.permit(:weartype,:image,:price,:size,:available,:description)
    end
end
