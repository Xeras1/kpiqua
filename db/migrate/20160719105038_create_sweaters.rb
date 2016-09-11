class CreateSweaters < ActiveRecord::Migration
  def change
    create_table :sweaters do |t|
      t.references :base
      t.references :pocket
      t.integer :price
      t.integer :cost

      t.timestamps null: false
    end
  end
end
