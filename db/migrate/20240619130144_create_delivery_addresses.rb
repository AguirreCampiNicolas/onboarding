class CreateDeliveryAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :delivery_addresses do |t|
      t.references :order, null: false, foreign_key: true
      t.string :name_and_last_name
      t.string :contact
      t.date :date
      t.time :time
      t.string :address
      t.decimal :shipment_cost

      t.timestamps
    end
  end
end
