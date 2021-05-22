class Instituition < ApplicationRecord
  belongs_to :user
  has_many :campaigns
end
