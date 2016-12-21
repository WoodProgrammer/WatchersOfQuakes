require 'csv'

CSV.foreach("quake_data.csv") do |row|
  puts row
end
