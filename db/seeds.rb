require 'csv'
puts "destroying apparels..."
Apparel.destroy_all

puts "creating apparels..."
csv_text = File.read('public/import_clothes.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each_with_index do |row, index|
  apparel = Apparel.create({
    section: row["section"],
    item: row["item"],
    description: row["description"],
    min1: row["min1"],
    max1: row["max1"],
    min2: row["min2"],
    max2: row["max2"],
    min3: row["min3"],
    max3: row["max3"],
    min4: row["min4"],
    max4: row["max4"],
    min5: row["min5"],
    max5: row["max5"],
    min6: row["min6"],
    max6: row["max6"],
    min7: row["min7"],
    max7: row["max7"],
    min8: row["min8"],
    max8: row["max8"],
    min9: row["min9"],
    max9: row["max9"]
  })
end

puts "#{Apparel.count} apparels in database."
