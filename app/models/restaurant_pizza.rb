class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
    # validate :price_range

    # def price_range
    #     if price < 1 || price > 30
    #         errors.add(:price, "Thats not a valid price!")
    #     end
    # end
end
