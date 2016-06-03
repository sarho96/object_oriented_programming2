=begin
basic sales tax = 10%
all goods except:
    - books
    - food
    - medical products

import duty = 5%
no exceptions

always receive a receipt that lists all items and price (plus tax)
receipt finishes with total cost of items
receipt finishes with total amouts of sales tax paid

rounding rules for sales tax:

sales tax = (tax_rate_percent * shelf_price / 100).round(0.05)

=end

class Item

end

class Receipt

end
