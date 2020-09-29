class Client < ApplicationRecord
    has_many :cases
    has_many :social_workers, through: :cases
end
