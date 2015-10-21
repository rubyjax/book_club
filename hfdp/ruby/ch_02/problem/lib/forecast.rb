require 'displays'

class Forecast  < Displays
  def multiply
    @temperature * @humidity * @pressure
  end
end
