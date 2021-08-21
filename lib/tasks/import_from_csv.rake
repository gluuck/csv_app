require 'csv'

desc 'Imports a CSV file into an ActiveRecord table'
  task :csv_supplier_import =>  :environment do
    csv_text = File.read('db/seed_data/suppliers.csv')
	csv = CSV.parse(csv_text)
	csv.each do |row|
	  Supplier.create!(supplier_code: row[0],supplier_name: row[1])
	end
  end
