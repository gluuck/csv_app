class Supplier < ApplicationRecord
  validates :supplier_code, presence: true, uniqueness: true
end
