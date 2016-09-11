class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.integer :price
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
