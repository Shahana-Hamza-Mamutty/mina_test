class CreateCustomerorders < ActiveRecord::Migration
  def change
    create_table :customerorders do |t|
    	t.integer :orders_id
    	t.integer :customers_id
    	t.integer :items_id

      t.timestamps
    end
  end
end
