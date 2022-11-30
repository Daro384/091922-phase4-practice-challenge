class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        render json: restaurant, include: :pizzas
    end

    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        restaurant.destory
        head :no_content
    end

end
