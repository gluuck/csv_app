class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :'1443'
      t.string :"Spencer-Turcotte"

      t.timestamps
    end
  end
end
