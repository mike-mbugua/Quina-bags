class BagsController < ApplicationController
    def index
        bag=Bag.all;
        render json: bag, status: :ok
    end
end
