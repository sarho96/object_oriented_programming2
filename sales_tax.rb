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

# created an Item class which initializes instance variables:
# name, price, sales_tax, and import_tax

################ Receipt Class ################

class Receipt
  attr_reader :item_list, :sales_tax_total, :total_price
#instances
  def initialize (item_list)
    @item_list = item_list #dertermines whether sales/import tax is applicable
    @sales_tax_total = 0 #this calculates the total of just sales taxes applied
    @total_price = 0 #this calculates the total of all items together
  end

#methods
#### Tax Calculation (True or False) ####

  def tax_total(price, sales_tax, import_tax) #calculates the sales/import tax
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
      return price
  end

  def output
    # in method calculate total sales taxes
    puts "ITEMS"
    @item_list.each do |iterate|
      # are items sales/import tax applicable?
      puts "1 #{iterate.name} at #{tax_total(iterate.price, iterate.sales_tax, iterate.import_tax)}"
      @total_price += iterate.price
    end
    puts "Sales Taxes: #{@sales_tax_total}"
    @total_price += @sales_tax_total
    puts "Total: #{@total_price}"
  end
end

################ Instructions ################
#create objects of Item class
book = Items.new("Book", 12.49, "false", "false")
music_CD = Items.new("Music CD", 14.99, "true", "false")
chocolate_bar = Items.new("Chocolate Bar", 0.85, "false", "false")
import_chocolate_box = Items.new("Imported Box of Chocolates", 10, "false", "true")
import_bottle_perfume = Items.new("Imported Bottle of Perfume", 47.50, "true", "true")



#puts '%.2f' % [(bag.tax_total).round(2)/100)]
# create an array
receipt_items = []

#new empty array
receipt_items2 = []

# add items into array
receipt_items << book
receipt_items << music_CD
receipt_items << chocolate_bar
receipt_items2 << import_chocolate_box
receipt_items2 << import_bottle_perfume

#created receipt object
  receipt = Receipt.new(receipt_items)
  receipt.output

puts "\n"
  receipt2 = Receipt.new(receipt_items2)
  receipt2.output
# output total of all items with applicable taxes
