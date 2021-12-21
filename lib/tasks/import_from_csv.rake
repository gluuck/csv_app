require 'csv'

desc 'Imports a CSV file into an ActiveRecord table'
  task :csv_supplier_import =>  :environment do
		CSV.foreach('db/seed_data/suppliers.csv', headers: true, col_sep: "¦") do |row|
	  	Supplier.create!("1443"=> row["1443"], "Spencer-Turcotte"=> row["Spencer-Turcotte"])
		end
  end

  task :csv_sku_import =>  :environment do
		CSV.foreach('db/seed_data/sku.csv', headers: true, col_sep: "¦" ) do |row| 
	 	
	  	 Sku.create!("1978"=> row["1978"], "2437" => row["2437"],"Onesync GPS Power Kit"=> row["Onesync GPS Power Kit"] ,
	  	 						 "GFM"=> row["GFM"],
	  	 						 "407"=> row["407"],"1-976-976-6558 x867"=>row["1-976-976-6558 x867"],"607074511915"=>row["607074511915"],
	  	 						 "nil"=> row["nil"],"282.97"=>row["282.97"])
		end
	end
