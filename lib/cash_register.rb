class CashRegister 
  attr_accessor :discount, :total, :items

  def initialize(discount=nil)
    @discount = discount 
    @total = 0 
    @items = []
  end
  
  def add_item(title,quantity=1,price)
    @total += price * quantity
    @items << title
  end
  
  def apply_discount
    return "There is no discount to apply." unless @discount
    @total -= (total * (@discount * 0.01)) 
    return "After the discount, the total comes to $#{@total.to_i}."
  end
end
