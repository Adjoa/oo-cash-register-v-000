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
  #
  # def apply_discount
  #
  # end
  #
  # def items
  #
  # end
  #
  # def void_last_transaction
  #
  # end

end
