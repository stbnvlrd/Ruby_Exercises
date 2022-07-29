=begin

        Classes and Objects I
1. Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some 
instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 
during instantiation of the object to track the current speed of the car as well. Create instance methods that allow 
the car to speed up, brake, and shut the car off.

2. Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that
allows you to view, but not modify, the year of your car.

3. You want to create a nice interface that allows you to accurately describe the action you want your program to perform. 
Create a method called spray_paint that can be called on an object and will modify the color of the car.


        Classes and Objects II
1. Add a class method to your MyCar class that calculates the gas mileage of any car.
=end


class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end

  def shut_down
    @speed = 0
  end

  def current_speed
    puts "You are now going #{@speed} km/h."
  end

  def spray_paint(color)
    self.color = color
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

end

lumina = MyCar.new(1997, 'white', 'chevy lumina')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
lumina.color = 'black'
puts lumina.color
puts lumina.year
lumina.spray_paint('red')
puts lumina.color
MyCar.gas_mileage(13, 351)