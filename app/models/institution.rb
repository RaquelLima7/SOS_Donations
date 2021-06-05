class Institution < ApplicationRecord
  belongs_to :user
  has_many :campaigns
  has_many :accountabilities, through: :campaigns
  has_many :reviews, through: :accountabilities

  validates :name, presence: true
  validates :description, presence: true
  validates :cnpj, presence: true
  validates :address, presence: true

  has_many_attached :photos

  def rating
    sum_stars = 0
    count = 0
    self.reviews.each do |review|
      sum_stars += review.star
      count += 1
    end
    count > 0 ? (sum_stars / count.to_f / 5 * 100).floor : nil
  end
end
