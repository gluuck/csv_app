class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.integer :supplier_id
      t.string :supplier_name

      t.timestamps
    end
  end
end
