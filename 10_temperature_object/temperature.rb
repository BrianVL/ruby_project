class Temperature
  def initialize(options={})
    @options = options
    @c = options[:c]
    @f = options[:f]
  end

  # Use from_celsius method to set options[:c]
  def self.from_celsius(celsius)
    self.new(:c => celsius)
  end

  # Use from_fahrenheit method to set options[:f]
  def self.from_fahrenheit(fahrenheit)
    self.new(:f => fahrenheit)
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      return @f
    elsif @options.has_key?(:c)
      return ctof
    end
  end

  def in_celsius
    if @options.has_key?(:c)
      return @c
    elsif @options.has_key?(:f)
      return ftoc
    end
  end

  def ftoc
    ((@f - 32) * 5/9.to_f).round(1)
  end

  def ctof
    ((@c * 9/5.to_f) + 32).round(1)
  end

end

# Make subclass of class Temperature
class Celsius < Temperature
  def initialize(celsius)
    # Call super to set options in Temperature object
    super(:c => celsius)
  end
end

# Make subclass of class Temperature
class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(:f => fahrenheit)
  end
end
