require 'displays'

class CurrentConditions < Displays
  def sum
    @temperature + @humidity + @pressure
  end
end
