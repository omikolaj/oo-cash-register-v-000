class CashRegister

  attr_accessor :total, :discount

  @items = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    binding.pry
    self.total += (price * quantity)
    @total << title
  end

  def apply_discount
    if(self.discount != 0)
      const = 0.0100
      discount_dec = self.discount * const
      discount = self.total * discount_dec
      self.total -= discount
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end



end
