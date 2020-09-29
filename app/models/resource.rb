class Resource < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases
    has_many :social_workers, through: :cases
end
