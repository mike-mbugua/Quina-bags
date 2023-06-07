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
        bag = Bag.new(bags_params)
      
        if bag.save
          render json: bag, status: :created
        else
          render json: { error: bag.errors.full_messages }, status: :unprocessable_entity
        end
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
