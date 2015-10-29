class AddAcceptedByIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :acceptedByID, :integer, :default => 0
  end
end
