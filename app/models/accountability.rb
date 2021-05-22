class Accountability < ApplicationRecord
  belongs_to :campaign
  has_many :reviews
  validates :content, presence :true
end
