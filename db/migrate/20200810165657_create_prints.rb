class CreatePrints < ActiveRecord::Migration[6.0]
  def change
    create_table :prints do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :colour
      t.string :size
      t.string :delivery_days

      t.timestamps
    end
  end
end
