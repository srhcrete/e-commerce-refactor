class RemoveTotalPriceAndDecimalFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :total_price
    remove_column :orders, :decimal
  end
end
