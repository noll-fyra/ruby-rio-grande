require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    @digital_item = DigitalItem.new('Generic digital item', 1.99)
  end

  describe 'Initialization' do
    it 'is an instance of the DigitalItem class' do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it 'should be an digital_item' do
      expect(@digital_item).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Generic digital item')
    end
    it 'is assigned a price' do
      expect(@digital_item.price).to eq(1.99)
    end
  end

  describe 'Accessors' do
    it 'should be able to get quantity' do
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should be able to get and set name' do
      @digital_item.name = 'New Name'
      expect(@digital_item.name).to eq('New Name')
    end
    it 'should be able to get and set price' do
      @digital_item.price = 44.99
      expect(@digital_item.price).to eq(44.99)
    end
    it 'should be able to get and set description' do
      expect(@digital_item.description).to eq('')
      @digital_item.description = 'test'
      expect(@digital_item.description).to eq('test')
    end
  end

  describe 'Methods' do
    it 'should not be able to stock' do
      @digital_item.stock 5
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should not be able to sell anything' do
      @digital_item.sell 6
      expect(@digital_item.quantity).to eq(1)
    end
    it 'should not be able to sell items and update quantity' do
      @digital_item.sell 3
      expect(@digital_item.quantity).to eq(1)
    end
  end
end
