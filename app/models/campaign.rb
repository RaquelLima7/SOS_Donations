class Campaign < ApplicationRecord
  belongs_to :institution
  has_many :donations
  has_many :accountabilities

  CATEGORIES = ["Coronavirus", "Hunger and Poverty", "Health", "Eldery", "Children", "Education", "Emergency Situations"]
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not permited category" }
  validates :name, presence: true
  validates :description, presence: true
  validates :total, presence: true

  has_many_attached :photos
end
