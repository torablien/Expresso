class AddIsDriverToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isDriver, :boolean
  end
end
