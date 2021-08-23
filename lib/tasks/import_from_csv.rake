require 'csv'

desc 'Imports a CSV file into an ActiveRecord table'
  task :csv_supplier_import =>  :environment do
    csv_text = File.read('db/seed_data/suppliers.csv')
			csv = CSV.parse(csv_text)
			csv.each do |row|
	  	Supplier.create!(supplier_id: row.join.split(/¦/).first,
	  									 supplier_name: row.join.split(/¦/).second)
			end
  end

  task :csv_sku_import =>  :environment do
    csv_text = File.read('db/seed_data/sku.csv')
			csv = CSV.parse(csv_text)
			csv.each do |row|
	  	 row_arr = row.join.split(/¦/)
	  	 Sku.create!(sku: row_arr[0], supplier_id: row_arr[1],part_name: row_arr[2] ,
	  	 						 col_1: row_arr[3],
	  	 						 col_2:row_arr[4],col_3:row_arr[5],col_4:row_arr[6],col_5:row_arr[7],
	  	 						 price: row_arr.last)
			end
	end
