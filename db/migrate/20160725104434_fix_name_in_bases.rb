class FixNameInBases < ActiveRecord::Migration
  def change
    rename_column :bases, :hoop, :hood
  end
end
