class Sku < ApplicationRecord
	validates :sku, :supplier_id,:part_name, :price,  presence: true
end
