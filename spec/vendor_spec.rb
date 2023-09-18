require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  describe "#initialize" do

    it 'exists' do
      expect(@vendor).to be_a(Vendor)
      expect(@vendor.name).to eq("Rocky Mountain Fresh")
    end
  end

  describe '#inventory, check_stock, stock' do
    
    it 'returns empty hash' do
      expect(@vendor.inventory).to eq({})
    end

    it 'returns 0 stock' do
      expect(@vendor.check_stock(@item1)).to eq(0)
    end

    it 'stocks item and return inventory hash' do
      @vendor.stock(@item1, 30)
      expect(@vendor.inventory).to be_a(Hash)
    end
  end
end


