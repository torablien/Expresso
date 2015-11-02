class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :content
      t.text :name
      t.text :location
      t.text :time
      t.integer :acceptedByID, default: 0
      t.timestamps null: false
    end
  end
end