class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ""
      t.decimal :price, null: false, default: 0
      t.integer :rate, null: true, default: 0
      t.string :description, null: true, default: ""
      t.boolean :vegan_or_vegetarian, null: true, default: false
      t.boolean :sugar_free, null: true, default: false
      t.boolean :no_tacc, null: true, default: false
      t.boolean :apetizer, null: true, default: false
      t.boolean :for_sharing, null: true, default: false

      t.timestamps
    end
  end
end
