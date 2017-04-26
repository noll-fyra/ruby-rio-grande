require_relative 'item.rb'

class DigitalItem < Item
  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def buy(amount)
    @quantity = 1
  end

# remove_method :buy

  def stock(amount)
    @quantity = 1
  end
end
