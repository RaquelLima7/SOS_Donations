class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  has_one :review

  validates :quantity, presence: true

  def donation_expression
    if self.campaign.type_donation == "Volunteer"
      "Voluntered!"
    elsif self.campaign.type_donation == "Fundrising"
      "Donated: R$#{self.quantity}"
    else
      "Donated: #{self.quantity} #{"item".pluralize(self.quantity)}"
    end
  end



end
