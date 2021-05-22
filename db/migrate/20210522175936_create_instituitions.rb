class CreateInstituitions < ActiveRecord::Migration[6.0]
  def change
    create_table :instituitions do |t|
      t.string :name
      t.string :cnpj
      t.string :address
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
