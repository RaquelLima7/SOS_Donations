class CreateAccountabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :accountabilities do |t|
      t.text :content
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
