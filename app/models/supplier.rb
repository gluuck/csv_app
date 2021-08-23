class Supplier < ApplicationRecord
  has_many :skus
  validates :supplier_id,:supplier_name, presence: true
end
