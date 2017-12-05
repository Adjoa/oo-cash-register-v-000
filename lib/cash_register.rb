class CashRegister
  attr_accessor :total, :discount, :title, :price

  ITEMS = {}

  def initialize(discount = 0.00)
    self.total = 0.00
    self.discount = discount
  end

  def add_item(title, price, quantity = 1)
    ITEMS[title] = {price: price, quantity: quantity}
    self.total += price * quantity
  end

  def apply_discount
    self.total *= (1 - self.discount/100)
    "After the discount, the total comes to $#{self.total}."
  end
  #
  # def items
  #
  # end
  #
  # def void_last_transaction
  #
  # end

end
