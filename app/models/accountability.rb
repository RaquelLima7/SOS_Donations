class Accountability < ApplicationRecord
  belongs_to :campaign
  has_many :reviews
  validates :content, presence: false

  has_many_attached :photos
end
