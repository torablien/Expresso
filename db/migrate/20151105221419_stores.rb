class Stores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name
      t.text :description
      t.text :address
      t.text :url
    end
  end
end
