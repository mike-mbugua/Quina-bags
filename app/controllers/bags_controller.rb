class BagsController < ApplicationController
    def index
        bag=Bag.all;
        render json: bag, status: :ok
    end

    def show
        bag=Bag.find(params[:id]);
        render json: bag, status: :found
    end

    def create
        bag=Bag.create(bags_params)
        render json: bag, status: :created
    end


    def destroy
        bag= Bag.find(params[:id])
        bag.destroy
    end

    def update
        bag=Bag.find(params[:id])
        bag.update(bags_params)
        render json: bag
    end

    private
    def bags_params
        params.permit(:name,:bagType,:image,:price,:available,:description)
    end
end
