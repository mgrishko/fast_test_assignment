require "minitest/autorun"
require_relative 'computer'

expected_devices = { mouse: 'Mouse: Wireless Touch ($60)', cpu: '* Cpu: 2.9 Ghz quad-core ($120)',
  keyboard: 'Keyboard: Standard US ($20)', display: '* Display: LED 1980x1024 ($150)' }

describe Computer do
  before do
    ds = DS.new
    @workstation = Computer.new(1, ds)
  end

  expected_devices.dup.tap {|h| h.delete(:display)}.each do |key, value|
      describe "##{key}" do
        it "must respond positively" do
          _(@workstation.public_send(key)).must_equal value
        end
      end
    end
end

describe Computer2v do
  before do
    ds = DS.new
    @workstation2v = Computer2v.new(1, ds)
  end

  expected_devices.each do |key, value|
      describe "##{key}" do
        it "must respond positively" do
          _(@workstation2v.public_send(key)).must_equal value
        end
      end
    end
end

describe Computer3v do
  before do
    ds = DS.new
    @workstation3v = Computer3v.new(1, ds)
  end


  expected_devices.each do |key, value|
      describe "##{key}" do
        it "must respond positively" do
          _(@workstation3v.public_send(key)).must_equal value
        end
      end
    end
end