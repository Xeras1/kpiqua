class AddCostAndPriceToSweater < ActiveRecord::Migration
  def change
    change_column_default :sweaters, :price,  39
    change_column_default :sweaters, :cost,  33
  end
end
