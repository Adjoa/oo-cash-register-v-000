class CashRegister
  attr_accessor :total, :discount, :title, :price

  def initialize(discount = 1)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end

end
