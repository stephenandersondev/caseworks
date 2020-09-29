class Resource < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases
    has_many :social_workers, through: :cases

    def escaped_address
        URI.escape(self.address)
    end
    
    def maps_link
        api_key = ENV['MAPS_KEY']
        link = "https://www.google.com/maps/embed/v1/place?key=#{api_key}&q=#{self.escaped_address}"
    end
end
