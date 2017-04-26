require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @cd = Cd.new('Harry Potter', 15.00, 24, 'JK Rowling', 500)
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('Harry Potter')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(15.00)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(24)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq('JK Rowling')
    end

    it 'is assigned a runtime' do
      expect(@cd.runtime).to eq(500)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Paradise Lost'
      expect(@cd.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 0
      expect(@cd.tracks).to eq(0)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'John Milton'
      expect(@cd.artist).to eq('John Milton')
    end

    it 'assigns and reads the runtime' do
      @cd.runtime = 390
      expect(@cd.runtime).to eq(390)
    end
  end
end
