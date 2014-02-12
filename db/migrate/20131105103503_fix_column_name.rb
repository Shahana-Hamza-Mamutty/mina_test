class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :customers, :users_id, :user_id
  end
end
