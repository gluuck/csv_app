class CreateSkus < ActiveRecord::Migration[6.1]
  def change
    create_table :skus do |t|
      t.string :sku
      t.belongs_to :supplier
      t.string :part_name
      t.string :col_1
      t.string :col_2
      t.string :col_3
      t.string :col_4
      t.string :col_5
      t.float :price
      t.timestamps
    end
  end
end
