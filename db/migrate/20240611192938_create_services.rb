class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name, null: false, default: ""
      t.string :description, null: true, default: ""

      t.timestamps
    end
  end
end
