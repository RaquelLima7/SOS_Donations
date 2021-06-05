class Campaign < ApplicationRecord
  belongs_to :institution
  has_many :donations
  has_many :accountabilities

  CATEGORIES = ["Coronavirus", "Hunger and Poverty", "Health", "Eldery", "Children", "Education", "Emergency Situations", "Animal causes"]
  validates :category, presence: true, inclusion: { in: CATEGORIES, message: "%{value} is not permited category" }
  validates :name, presence: true
  validates :description, presence: true
  validates :total, presence: true

  has_many_attached :photos

  def indicator
    if self.type_donation == "Volunteer"
      "#{(self.raised / self.total.to_f * 100).floor}%  already Volunteered"
    else
      "#{(self.raised / self.total.to_f * 100).floor}%  already Donated!"
    end
  end

  def missing_expression
    qtde_missing = self.raised >= self.total ? 0 : (self.total - self.raised)
    if self.type_donation == "Volunteer"
      "#{qtde_missing} #{'Volunteer'.pluralize(qtde_missing)}"
    elsif self.type_donation == "Fundrising"
      "R$: #{qtde_missing}"
    else
      "#{qtde_missing} #{'Donation'.pluralize(qtde_missing)}"
    end
  end

end
