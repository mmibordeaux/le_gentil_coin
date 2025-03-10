class CreateOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :image
      t.text :description
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
