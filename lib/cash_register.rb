require 'pry' 
class CashRegister
 attr_accessor :total, :discount, :last_trans
                                           
  
  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      
  end
  
  def add_item(title, price, quantity = 1) 
        self.total += (price * quantity)
         self.last_trans=price * quantity
        quantity.times do
        self.items << title
        end
      end
      
  def apply_discount
       new_price = self.total -= @discount*10
       if new_price >0 
        "After the discount, the total comes to $#{new_price}."
      else "There is no discount to apply." 
      end
    
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
      self.total -= self.last_trans
      #binding.pry
  end     
end 






