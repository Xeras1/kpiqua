class AddColumnToSweater < ActiveRecord::Migration
  def change
    add_column :sweaters, :order_id, :integer
    add_column :sweaters, :size, :string
  end
end
