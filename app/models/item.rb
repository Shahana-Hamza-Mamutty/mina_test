class Item < ActiveRecord::Base
	has_many :customerorders
	has_many :orders, :through=> :customerorders
end
