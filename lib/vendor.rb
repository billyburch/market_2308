class Vendor
  attr_reader :name, :price, :inventory, :quantity
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(name)
    if @inventory.include?(name)
      @inventory
    else
      0
    end
  end
  def add_item(item, price)
    @items[item] = price 
  end

  def stock(item, quantity)
    @inventory = Hash.new(0)
    @inventory[item] = item.name
    @inventory[item] = item.price
    @inventory[item] += quantity
  end
end