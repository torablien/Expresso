class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :content
      t.text :name
      t.text :location
      t.text :time
      t.text :restaurant
      t.text :price
      t.integer :createdByID
      t.integer :acceptedByID, default: 0
      t.boolean :isDone, default: false
      t.timestamps null: false
    end
  end
end