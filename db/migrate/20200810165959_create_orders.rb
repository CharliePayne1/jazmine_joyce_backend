class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.date :delivery_date
      t.integer :print_id

      t.timestamps
    end
  end
end
