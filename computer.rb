require_relative 'ds'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    result = "Mouse: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end

  def cpu
    info = @data_source.get_cpu_info(@id)
    price = @data_source.get_cpu_price(@id)
    result = "Cpu: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end

  def keyboard
    info = @data_source.get_keyboard_info(@id)
    price = @data_source.get_keyboard_price(@id)
    result = "Keyboard: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end

class Computer2v
  POSSIBLE_DEVICES = %w(mouse cpu keyboard).freeze

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  POSSIBLE_DEVICES.each do |method_name|
    define_method method_name do
      info = @data_source.public_send("get_#{method_name}_info", @id)
      price = @data_source.public_send("get_#{method_name}_price", @id)
      result = "#{method_name.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end
end

class Computer3v
  POSSIBLE_DEVICES = %i(mouse cpu keyboard).freeze

  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(method_name, *args, &block)
    info = "get_#{method_name}_info"
    price = "get_#{method_name}_price"

    if POSSIBLE_DEVICES.include? method_name
      info = @data_source.public_send(info, @id)
      price = @data_source.public_send(price, @id)
      result = "#{method_name.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price >= 100
      result
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    POSSIBLE_DEVICES.include? method_name || super
  end
end

