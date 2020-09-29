class SocialWorker < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases

    has_secure_password

    
end
