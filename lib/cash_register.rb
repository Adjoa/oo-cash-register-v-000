class CashRegister

  ITEMS = []

  attr_accessor :total, :discount, :title, :price

  def initialize(discount = 0.00)
    self.total = 0.00
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    ITEMS << title
    self.total += price * quantity
  end

  def apply_discount
    if discount > 0.00
      self.total *= (1 - self.discount/100.0)
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    ITEMS
  end
  #
  # def void_last_transaction
  #
  # end

end
