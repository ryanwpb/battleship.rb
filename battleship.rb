require './position'
require './ship'

class Player
  def initialize()
  end
end


class HumanPlayer < Player
  def initialize(name = "Dave")
    @name = name
  end
  def name()
    @name
  end
end


class ComputerPlayer < Player
  def initialize()
  end
  def name
    "HAL 9000"
  end
end


class Ship
  def initialize(length)
    @length = length
  end
  def length
    @length
  end
  def place(across_start,down_start,orientation)
    @across_start = across
    @down_start = down
    @orientation = orientation
  end

  def initialize(x, y)
   @position = [x, y]
   @hit = 0
 end
 def position
     @position
   end

   def is_hit
     @hit
   end
 end

ship = Ship.new(4)
