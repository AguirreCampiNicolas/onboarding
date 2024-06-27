class CreatePersonalizations < ActiveRecord::Migration[7.1]
  def change
    create_table :personalizations do |t|
      t.string :name
      t.decimal :price
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
