################ Items Class ################

class Items
  attr_accessor :name, :price, :sales_tax, :import_tax

  def initialize(name, price, sales_tax, import_tax)
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end
end

################ Receipt Class ################

class Receipt
  attr_reader :shelf_items, :sales_tax_total, :total_price
  def initialize (shelf_items)
    @shelf_items = shelf_items
    @sales_tax_total = 0
    @total_price = 0
  end

  def tax_total(price, sales_tax, import_tax)
      if (sales_tax == "true" && import_tax == "true")
        @sales_tax_total +=  price * (0.10 + 0.05)
        price *= (1.10 + 0.05)
      elsif (sales_tax == "false") && (import_tax == "false")
        price
      elsif (sales_tax == "false") && (import_tax == "true")
        @sales_tax_total +=  price * 0.05
        price *= 1.05
      elsif (sales_tax == "true") && (import_tax == "false")
        @sales_tax_total +=  price * 0.10
        price *= 1.10
      end
      return price = price.round(2)
  end

  def output
    # in method calculate total sales taxes
    @shelf_items.each do |iterate|
      # are items sales/import tax applicable?
      puts "1 #{iterate.name} at #{tax_total(iterate.price, iterate.sales_tax, iterate.import_tax)}"
      @total_price += iterate.price
    end
    puts "Sales Taxes: #{@sales_tax_total.round(2)}"
    @total_price += @sales_tax_total
    puts "Total: #{@total_price.round(2)}"
  end
end

################ Instructions ################
book = Items.new("Book", 12.49, "false", "false")
music_CD = Items.new("Music CD", 14.99, "true", "false")
chocolate_bar = Items.new("Chocolate Bar", 0.85, "false", "false")
import_chocolate_box = Items.new("Imported Box of Chocolates", 10, "false", "true")
import_bottle_perfume = Items.new("Imported Bottle of Perfume", 47.50, "true", "true")
import_bottle_perfume2 = Items.new("Imported Bottle of Perfume", 32.19, "true", "true")
bottle_perfume = Items.new("Bottle of Perfume", 20.89, "true", "false")
headache_pills = Items.new("Packet of Headache Pills", 9.75, "false", "false")
import_chocolate_box2 = Items.new("Imported Box of Chocolates", 11.85, "false", "true")

# create arrays
receipt_items = []
receipt_items2 = []
receipt_items3 = []

# add items into array
receipt_items << book
receipt_items << music_CD
receipt_items << chocolate_bar
receipt_items2 << import_chocolate_box
receipt_items2 << import_bottle_perfume
receipt_items3 << import_bottle_perfume2
receipt_items3 << bottle_perfume
receipt_items3 << headache_pills
receipt_items3 << import_chocolate_box2

#created receipt object
  receipt = Receipt.new(receipt_items)
  receipt.output

puts "\n"

  receipt2 = Receipt.new(receipt_items2)
  receipt2.output

puts "\n"

  receipt3 = Receipt.new(receipt_items3)
  receipt3.output
