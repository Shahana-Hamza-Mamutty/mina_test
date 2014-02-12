class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :itemname
    	t.string :brand
    	t.integer :price

      t.timestamps
    end
  end
end
