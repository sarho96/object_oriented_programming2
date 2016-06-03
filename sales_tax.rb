class Items
  attr_accessor :name, :price, :sales_tax, :import_tax

  def initialize (name, price, sales_tax, import_tax)
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

  def s_tax
    if @sales_tax == "true"
      @price * 1.10
    elsif @sales_tax == "false"
      @price
    end
  end

  def i_tax
    if @import_tax == "true"
      @price * 1.05
    elsif @import_tax == "false"
      @price
    end
  end

end

class Receipt

end


chocolate = Items.new("chocolate", 12.99, "true", "false")
puts chocolate.s_tax
