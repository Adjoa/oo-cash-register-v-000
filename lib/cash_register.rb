class CashRegister

  attr_accessor :total, :discount, :title, :price, :itemsIn

  def initialize(discount = 0.00)
    self.total = 0.00
    self.discount = discount
    self.itemsIn = {}
  end

  def add_item(title, price, quantity = 1)
    self.itemsIn[title] = {price: price, quantity: quantity}
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
    arr = []
    self.itemsIn.each do |item, info|
      puts "#{item} #{item[info == quantity]}"
    end
    # puts "#{self.itemsIn}"
    # self.itemsIn.each do |item, info|
      # puts "#{item} #{info}"
      # info.each do |price, quantity|
      #   puts "#{item} #{quantity}"
    #     quantity.times do
    #       arr << item
    #     end
      # end
    # end

    arr
  end
  #
  # def void_last_transaction
  #
  # end

end
