class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
      	t.string :email
      	t.string :age
      	t.integer :users_id
      t.timestamps
    end
  end
end
