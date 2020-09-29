class SocialWorker < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases
end
