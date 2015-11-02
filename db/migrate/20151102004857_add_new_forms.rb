class AddNewForms < ActiveRecord::Migration
  def change
     add_column :orders,:name, :text
     add_column :orders, :location, :text
     add_column :orders, :time, :text
  end
end
