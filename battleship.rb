require './ship'
require './grid'

class Player
  def initialize()
  end
  def grid
    grid = Grid.new
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
