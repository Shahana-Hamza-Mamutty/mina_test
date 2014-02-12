class ChangeColoumnNamesCustomerorders < ActiveRecord::Migration
  def change
  	rename_column :customerorders, :orders_id, :order_id
  	rename_column :customerorders, :items_id, :item_id
  end
end
