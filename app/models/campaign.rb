class Campaign < ApplicationRecord
  belongs_to :instituition
  has_many :donations
  has_many :accountabilities

  validates :name, presence :true
  validates :description, presence :true
  validates :category, presence :true
  validates :total, presence :true
end
