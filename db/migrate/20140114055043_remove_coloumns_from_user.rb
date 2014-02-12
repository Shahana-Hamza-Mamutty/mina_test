class RemoveColoumnsFromUser < ActiveRecord::Migration
  def change
  	  	remove_column :users, :latitude
  	  	remove_column :users, :longitude
  	  	remove_column :users, :description
  	  	remove_column :users, :title
  	  	remove_column :users, :address
  end
end
