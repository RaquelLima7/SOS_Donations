class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  has_one :review

  validates :quantity, presence :true
end
