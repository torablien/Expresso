class UpdateOrders < ActiveRecord::Migration
  def change
    change_column :orders,:name, :string
    change_column :orders, :location, :string
    change_column :orders, :time, :string
  end
end
