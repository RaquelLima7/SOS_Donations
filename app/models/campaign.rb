class Campaign < ApplicationRecord
  belongs_to :institution
  has_many :donations
  has_many :accountabilities

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :total, presence: true

  has_many_attached :photos
end
