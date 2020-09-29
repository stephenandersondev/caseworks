class Resource < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases
    has_many :social_workers, through: :cases

    # def maps_link
    #     API_KEY = ENV["MAPS_KEY"]

    #   link = "https://www.google.com/maps/embed/v1/place?key=#{API_KEY}
    # &q=Space+Needle,Seattle+WA"
    #     self.address.
    # end
end
