class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :institutions
  has_many :donations
  has_many :campaigns, through: :institutions
  has_many :accountabilities, through: :campaigns
  
  has_one_attached :photo
end
