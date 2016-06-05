################ Items Class ################

class Items
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price.to_f
  #  @sales_tax = sales_tax
  #  @import_tax = import_tax
  end

end

################ Receipt Class ################

class Receipt

  attr_reader :list_of_items
#instances


#methods
#### Tax Calculation (True or False) ####

def tax_total(price, sales_tax, import_tax)


    # if (@import_tax == "true") && (@sales_tax == "true")
    #   @price * (1.10 + 0.05)
    # elsif (@import_tax == "false") && (@sales_tax == "false")
    #   @price
    # elsif @sales_tax == "true"
    #   @price * 1.10
    # elsif @sales_tax == "false"
    #   @price
    # elsif @import_tax == "true"
    #   @price * 1.05
    # elsif @import_tax == "false"
    #   @price
    # end
end

def output

end

  def initialize
    @list_of_items = []
  end

  def add(items)
    @list_of_items << items
  end


end

################ Instructions ################
#create objects of Item class
book = Items.new("Book", 12.49, "false", "false")
music_CD = Items.new("Music CD", 14.99, "true", "false")
chocolate_bar = Items.new("Chocolate Bar", 0.85, "false", "false")
#puts '%.2f' % [(bag.tax_total).round(2)/100)]

# create an array
book = []

# add items into array
book = ["Book", 12.49, "false", "true"]

# put array[x] into method

# in method calculate:
  # are items sales tax applicable?
  # are items import tax applicable?
# output total sales taxes
# output total of all items with applicable taxes



item1 = Receipt.new
item1.add(bag)
