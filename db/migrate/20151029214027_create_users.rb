class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.text :name
      u.text :username
      u.text :address
      u.timestamps null: false
    end
  end
end
