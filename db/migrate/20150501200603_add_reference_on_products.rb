class AddReferenceOnProducts < ActiveRecord::Migration
  def change
  	add_reference :products, :categroy, index:true
  end
end
