class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :star
      t.references :accountability, null: false, foreign_key: true
      t.references :donation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
