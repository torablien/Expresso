class AddChargesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :charge, :string
  end
end
