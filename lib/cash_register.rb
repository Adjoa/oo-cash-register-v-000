class CashRegister
  attr_accessor :total, :discount, :title, :price

  def initialize(discount = 0.00)
    @total = 0.00
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total *= (1.00 - discount)
      puts "#{total}"
    end
  end

  def items

  end

  def void_last_transaction

  end

end
