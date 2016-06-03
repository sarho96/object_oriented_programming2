################ Items Class ################

class Items
  attr_accessor :name, :price, :sales_tax, :import_tax

  def initialize(name, price, sales_tax, import_tax)
    @name = name
    @price = price.to_f
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

#### Tax Calculation (True or False) ####

def tax_total
    if @sales_tax == "true"
      @price * 1.10
    elsif @sales_tax == "false"
      @price
    elsif @import_tax == "true"
      @price * 1.05
    elsif @import_tax == "false"
      @price
    elsif (@import_tax == "true") && (@sales_tax == "true")
      @price * (1.10 + 1.05)
    elsif (@import_tax == "false") && (@sales_tax == "false")
      @price
    end
end


end

################ Receipt Class ################

class Receipt

end

################ Instructions ################

chocolate = Items.new("chocolate", 4.20, "false", "false")
puts chocolate.tax_total
