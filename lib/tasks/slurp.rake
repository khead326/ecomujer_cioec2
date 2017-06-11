namespace :slurp do
  desc "TODO"
  task items: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "items.csv"))
  puts csv_text
  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "items.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  puts csv

    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "items.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
    puts row.to_hash
    end

        require "csv"

        csv_text = File.read(Rails.root.join("lib", "csvs", "items.csv"))
        csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
        csv.each do |row|
          t = Item.new
          t.product = row["product"]
          t.category_id = row["category_id"]
          t.origin = row["origin"]
          t.format = row["format"]
          t.price = row["price"]
          t.quantity = row["quantity"]
          t.image = row["image"]
          t.save
          puts "#{t.product}, #{t.category_id} saved"
        end

        puts "There are now #{Item.count} rows in the items table"

    end

end
