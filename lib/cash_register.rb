class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end

  def apply_discount
    const = 0.0100
    discount_dec = self.discount.to_f * const
    discount = self.total * discount_dec
    self.total -= discount
  end

end
