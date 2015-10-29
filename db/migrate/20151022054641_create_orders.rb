class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :content
      t.boolean :accepted
      t.timestamps null: false
      t.integer :acceptedByID
    end
      
    create_table :accepted do |a|
      a.text :content
      a.integer :acceptedId
    end
  end
end