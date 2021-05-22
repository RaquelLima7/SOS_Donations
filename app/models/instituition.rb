class Instituition < ApplicationRecord
  belongs_to :user
  has_many :campaigns
  validates :name, presence :true
  validates :description, presence :true
  validates :cnpj, presence :true
  validates :address, presence :true
end
