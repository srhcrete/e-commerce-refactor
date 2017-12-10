class AddTotalPriceDecimalAndDecimalToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total_price, :decimal, :precision => 5, :scale => 2
  end
end
