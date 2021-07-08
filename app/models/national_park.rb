class NationalPark < ApplicationRecord
  has_many :trails

  def self.order_by_most_recent
    order(created_at: :desc)
  end
end
