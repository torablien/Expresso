class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :content
      t.boolean :accepted
      t.timestamps null: false
    end
  end
end