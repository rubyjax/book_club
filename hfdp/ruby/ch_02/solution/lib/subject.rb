module Subject
  attr_reader :observers

  def initialize
    @observers = []
  end

  def add_observer(*observers)
   observers.each { |observer| @observers << observer }
  end

  def remove_observer(*observers)
   observers.each { |observer| @observers.delete(observer) }
  end

  private

  def notify_observers
    observers.each { |observer| observer.update(self) }
  end
end
