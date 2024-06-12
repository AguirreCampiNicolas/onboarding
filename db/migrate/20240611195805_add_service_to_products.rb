class AddServiceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :service, null: false, foreign_key: true
  end
end