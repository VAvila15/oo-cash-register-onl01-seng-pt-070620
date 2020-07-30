class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item,price,quantity = 1)
    
    if quantity > 1
      i = 0
    while i < quantity
      @items << item
      i+=1
    end
    else
      @items << item
    end
    @total += price*quantity
    @price = @total
    @total
  end
  
  def apply_discount
    if discount > 0
      @to_take_off = (price * discount)/ 100
      @total -= @to_take_off
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @price
  end
end