class RubberDuck
  include Swimable
  include Quackable

  def display
    "I am a Rubber Duck!"
  end

  def fly
    "I don't fly!"
  end
end
