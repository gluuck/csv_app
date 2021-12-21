class CreateSkus < ActiveRecord::Migration[6.1]
  def change
    create_table :skus do |t|
      t.string :'1978'
      t.string :'2437'
      t.string :'Onesync GPS Power Kit'
      t.string :'GFM'
      t.string :'407'
      t.string :'1-976-976-6558 x867'
      t.string :'607074511915'
      t.string :nil
      t.string :'282.97'
      t.timestamps
    end
  end
end
