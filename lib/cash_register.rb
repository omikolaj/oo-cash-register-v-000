class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price)
    self.total += price

  end

end
