class RemoveAddressFromOrders < ActiveRecord::Migration[7.1]
  def change
    remove_column :orders, :receiver_full_name
    remove_column :orders, :receiver_contact_number
    remove_column :orders, :ship_date
    remove_column :orders, :ship_time
    remove_column :orders, :ship_address
    remove_column :orders, :ship_cost
  end
end
