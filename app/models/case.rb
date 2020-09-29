class Case < ApplicationRecord
  belongs_to :client
  belongs_to :social_worker
  belongs_to :resource
  has_many :notes
end
