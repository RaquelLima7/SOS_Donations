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
end
