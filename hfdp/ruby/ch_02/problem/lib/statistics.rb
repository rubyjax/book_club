require 'displays'

class Statistics < Displays
  def average 
    (@temperature + @humidity + @pressure) / 3
  end
end
