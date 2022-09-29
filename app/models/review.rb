class Review < ApplicationRecord
  validates :rate_as_offer, presence: true
  validates :about, presence: true
end
