namespace :slurp do
  desc "TODO"
  task items: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "products_available.csv"))
  puts csv_text

  require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "products_available.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
puts csv

require "csv"

csv_text = File.read(Rails.root.join("lib", "csvs", "products_available.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
csv.each do |row|
  puts row.to_hash
end

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "products_available.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Item.new
    t.product = row["product"]
    t.product_category = row["product_category"]
    t.origin = row["origin"]
    t.format = row["format"]
    t.price = row["price"]
    t.quantity = row["quantity"]
    t.image = row["image"]
    t.save
    puts "#{t.product}, #{t.product_category} saved"
  end

  puts "There are now #{Item.count} rows in the items table"
  end

end
