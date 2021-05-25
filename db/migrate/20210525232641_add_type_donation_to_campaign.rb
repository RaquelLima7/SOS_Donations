class AddTypeDonationToCampaign < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :type_donation, :string
  end
end
