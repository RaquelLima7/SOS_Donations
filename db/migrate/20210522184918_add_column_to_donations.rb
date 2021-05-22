class AddColumnToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :anonymous, :boolean, default: false
  end
end
