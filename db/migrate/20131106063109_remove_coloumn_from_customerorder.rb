class RemoveColoumnFromCustomerorder < ActiveRecord::Migration
  def change
  	remove_column :customerorders, :customers_id
  end
end
