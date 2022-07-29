=begin
Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some 
instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 
during instantiation of the object to track the current speed of the car as well. Create instance methods that allow 
the car to speed up, brake, and shut the car off.
    
=end


class MyCar

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
  end

  def break(number)
    @speed -= number
  end

  def shut_down(number)
    @speed = 0
  end

  def color_change(color)
    @color = color
  end

  def current_speed
    puts "You are now going #{@current_speed} km/h."
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