class Order < ActiveRecord::Base
	belongs_to :customer
	has_many :customerorders
	has_many :items, :through=> :customerorders
end
