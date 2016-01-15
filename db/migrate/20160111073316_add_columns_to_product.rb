class AddColumnsToProduct < ActiveRecord::Migration
  def up
  	add_column :products, :price, :integer
  	add_column :products, :category, :string
  	add_column :products, :subcategory, :string
  end
  def down
  	remove_column :products, :price
  	remove_column :products, :category
  	remove_column :products, :subcategory
  end
end
