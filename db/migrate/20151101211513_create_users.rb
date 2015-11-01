class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.text :email
      t.text :address
      t.boolean :isDriver
      t.timestamps null: false
    end
  end
end
