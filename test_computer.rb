require "minitest/autorun"
require_relative 'computer'

describe Computer do
  before do
    ds = DS.new
    @workstation = Computer.new(1, ds)
  end

  describe '#mouse' do
    it "must respond positively" do
      _(@workstation.mouse).must_equal 'Mouse: Wireless Touch ($60)'
    end
  end

  describe '#cpu' do
    it "must respond positively" do
      _(@workstation.cpu).must_equal '* Cpu: 2.9 Ghz quad-core ($120)'
    end
  end

  describe '#keyboard' do
    it "must respond positively" do
      _(@workstation.keyboard).must_equal 'Keyboard: Standard US ($20)'
    end
  end

  describe '#non-defined method' do
    it 'must raise NoMethodError' do
      assert_raises NoMethodError do
        @workstation.smth
      end
    end
  end
end

describe Computer2v do
  before do
    ds = DS.new
    @workstation2v = Computer2v.new(1, ds)
  end

  describe '#mouse' do
    it "must respond positively" do
      _(@workstation2v.mouse).must_equal 'Mouse: Wireless Touch ($60)'
    end
  end

  describe '#cpu' do
    it "must respond positively" do
      _(@workstation2v.cpu).must_equal '* Cpu: 2.9 Ghz quad-core ($120)'
    end
  end

  describe '#keyboard' do
    it "must respond positively" do
      _(@workstation2v.keyboard).must_equal 'Keyboard: Standard US ($20)'
    end
  end

  describe '#non-defined method' do
    it 'must raise NoMethodError' do
      assert_raises NoMethodError do
        @workstation2v.smth
      end
    end
  end
end

describe Computer3v do
  before do
    ds = DS.new
    @workstation3v = Computer3v.new(1, ds)
  end

  describe '#mouse' do
    it "must respond positively" do
      _(@workstation3v.mouse).must_equal 'Mouse: Wireless Touch ($60)'
    end
  end

  describe '#cpu' do
    it "must respond positively" do
      _(@workstation3v.cpu).must_equal '* Cpu: 2.9 Ghz quad-core ($120)'
    end
  end

  describe '#keyboard' do
    it "must respond positively" do
      _(@workstation3v.keyboard).must_equal 'Keyboard: Standard US ($20)'
    end
  end

  describe '#non-defined method' do
    it 'must raise NoMethodError' do
      assert_raises NoMethodError do
        @workstation3v.smth
      end
    end
  end
end