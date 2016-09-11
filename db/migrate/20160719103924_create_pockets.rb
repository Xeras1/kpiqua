class CreatePockets < ActiveRecord::Migration
  def change
    create_table :pockets do |t|
      t.string :color
      t.string :image

      t.timestamps null: false
    end
  end
end
