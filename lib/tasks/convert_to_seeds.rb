require 'csv'

hopsital_csv = "Hospitals.csv"

CSV.parse(File.open(hopsital_csv), :headers => true) do |row|
  #write out to file for seed.rb

  #Hospital.create(name: '#{row['Hospital Name']}', address: '#{row['Address 1']}', city: '#{row['City']}', state: '#{row['State']}', zip: '#{row['Zip Code']}', county: '#{row['County Name']}', type: '#{row['Hospital Type']}', owner: '#{row['Hospital Owner']}', emergency_services: '#{row['Emergency Services']}', location: '#{row['Location']}')
  	location = row['Location'].gsub(/[\n]+/, " ")
  	location = location.gsub(/'/, "\\\\'")
  	
  	hospital = row['Hospital Name'].gsub(/'/, "\\\\'")

  	address = row['Address 1'].gsub(/'/, "\\\\'")

  	city = row['City'].gsub(/'/, "\\\\'")

	puts "Hospital.create(name: '#{hospital}', address: '#{address}', city: '#{city}', state: '#{row['State']}', zip: '#{row['ZIP Code']}', county: '#{row['County Name']}', hospital_type: '#{row['Hospital Type']}', owner: '#{row['Hospital Owner']}', emergency_services: '#{row['Emergency Services']}', location: '#{location}')\n"
	
end
