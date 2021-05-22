class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :category
      t.string :name
      t.string :description
      t.integer :total
      t.integer :raised
      t.references :instituition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
