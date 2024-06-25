class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      # order details
      t.integer :quantity, null: false, default: 1
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :personalization
      t.decimal :total, null: false

      # company details
      t.bigint :rut, null: false
      t.string :bussines_name, null: false

      # shipping details
      t.string :receiver_contact_number, null: false
      t.string :receiver_full_name, null: false
      t.date :ship_date, null: false
      t.time :ship_time, null: false
      t.string :ship_address, null: false
      t.decimal :ship_cost, null: false
      t.boolean :retry_shipping, default: false
      t.boolean :sourprise_shipping, default: false

      t.timestamps
    end
  end
end
