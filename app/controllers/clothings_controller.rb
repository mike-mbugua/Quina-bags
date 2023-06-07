class ClothingsController < ApplicationController
    def index
        clothing=Clothing.all;
        render json: clothing, status: :ok
    end

    def show
        clothing=Clothing.find(params[:id]);
        render json: clothing, status: :found
    end

    def create
        clothing=Clothing.create(clothing_params)
        render json: clothing, status: :created
    end


    def destroy
        clothing= Clothing.find(params[:id])
        clothing.destroy
    end

    def update
        clothing=Clothing.find(params[:id])
        Clothing.update(clothing_params)
        render json: clothing
    end

    private
    def clothing_params
        params.permit(:genderType,:weartype,:image,:price,:size,:available,:description)
    end
end
