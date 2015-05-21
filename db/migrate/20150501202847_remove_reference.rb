class RemoveReference < ActiveRecord::Migration
  def change
  	remove_reference(:products, :categroy, index: true)
  	add_reference(:products, :category, index: true)
  end
end
