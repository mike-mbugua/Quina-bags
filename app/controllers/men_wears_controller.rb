class MenWearsController < ApplicationController
    def index
        menWear=MenWear.all;
        render json: menWear, status: :ok
    end

    def show
        menWear=MenWear.find(params[:id]);
        render json: menWear, status: :found
    end

    def create
        menWear=MenWear.create(menwear_params)
        render json: menWear, status: :created
    end


    def destroy
        menWear= MenWear.find(params[:id])
        menWear.destroy
    end

    def update
        menWear=MenWear.find(params[:id])
        menWear.update(menwear_params)
        render json: menWear
    end

    private
    def menwear_params
        params.permit(:weartype,:image,:price,:size,:available,:description)
    end
end
