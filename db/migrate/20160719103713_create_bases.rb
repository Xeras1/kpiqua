class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :color
      t.string :image
      t.boolean :hoop
      t.boolean :neck

      t.timestamps null: false
    end
  end
end
