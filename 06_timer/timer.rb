class Timer
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end

  def seconds=(num)
    @seconds = num % 60
    minutes = (num / 60) % 60
    hours = (num / 60) / 60

    @time_string = "#{'%02d' % hours}:#{'%02d' % minutes}:#{'%02d' % @seconds}"
  end
end
