class Review < ApplicationRecord
  belongs_to :accountability
  belongs_to :donation
end
