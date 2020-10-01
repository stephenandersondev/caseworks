class SocialWorker < ApplicationRecord
    has_many :cases
    has_many :clients, through: :cases

    has_secure_password

    validates :name, :presence => true, :uniqueness => true
    validates :email, :presence => true, :uniqueness => true
    validates :phone_number, :presence => true, :uniqueness => true, :length => {minimum: 10}
    validates :specialty, :presence => true

    def num_cases
        self.cases.count
    end
    
end
