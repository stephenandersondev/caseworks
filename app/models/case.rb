class Case < ApplicationRecord
  belongs_to :client
  belongs_to :social_worker
  belongs_to :resource
  has_many :notes

  validates :client_id, :presence => true
  validates :social_worker_id, :presence => true
  validates :resource_id, :presence => true
  validates :focus, :presence => true

  def close_case
    self.status = "closed"
  end
end