class OrdersAddColumns < ActiveRecord::Migration
  def change
    change_column :orders,:name, :text
    change_column :orders, :location, :text
    change_column :orders, :time, :text
  end
end
