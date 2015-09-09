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
  def place(across,down,orientation)
    @across = across
    @down = down
    @orientation = orientation
  end
end
