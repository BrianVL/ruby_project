class Timer
  #read and write seconds
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    m_seconds = @seconds % 60
    #perform method on array and join array together in one string
    return [hours, minutes, m_seconds].map(&method(:padding)).join(":")
  end

  #add padding to show time notation
  def padding(input)
    "#{input}".rjust(2, '0')
  end
end
