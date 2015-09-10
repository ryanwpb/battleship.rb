require './ship'
class Grid
  def initialize
    @ships = []
    @hits =[]
  end

  def has_ship_on?(x, y)
    @ships.each do |ship|
      return true if ship.covers?(x, y)
    end
    false
  end

  def place_ship(ship, x, y, across)
     ship.place(x, y, across)
     unless @ships.any?{ |s| s.overlaps_with?(ship)}
    @ships << ship
    else
      false
    end
  end

  def display
    puts %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------}
    letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

      (1..10).each do |y|
       output = "#{letters[y-1]} |"
      (1..10).each do |x|
        if @hits.include?([x, y])
          output += " X |"
        elsif self.has_ship_on?(x, y)
          output += " O |"
        else output += "   |"
        end

  def fire_at(x, y)
    @ships
    @hits
    if has_ship_on?(x, y)
      return true #assert
    else
      return false #refute 
  end
end



      end
      puts output
    end
    puts   "  -----------------------------------------"
  end

#   def empty_grid
#   %Q{    1   2   3   4   5   6   7   8   9   10
#   -----------------------------------------
# A |   |   |   |   |   |   |   |   |   |   |
# B |   |   |   |   |   |   |   |   |   |   |
# C |   |   |   |   |   |   |   |   |   |   |
# D |   |   |   |   |   |   |   |   |   |   |
# E |   |   |   |   |   |   |   |   |   |   |
# F |   |   |   |   |   |   |   |   |   |   |
# G |   |   |   |   |   |   |   |   |   |   |
# H |   |   |   |   |   |   |   |   |   |   |
# I |   |   |   |   |   |   |   |   |   |   |
# J |   |   |   |   |   |   |   |   |   |   |
#   -----------------------------------------
# }
#   end
#
#   def ready_grid
#     %Q{    1   2   3   4   5   6   7   8   9   10
#   -----------------------------------------
# A | O | O | O | O |   |   |   |   |   |   |
# B |   |   |   |   |   | O |   |   |   |   |
# C |   |   |   |   |   | O |   |   |   |   |
# D |   |   |   |   |   | O | O | O | O |   |
# E |   |   |   |   |   | O |   |   |   |   |
# F |   |   | O | O |   | O |   |   |   |   |
# G |   |   |   |   |   |   |   |   |   |   |
# H |   |   |   | O | O | O |   |   |   |   |
# I |   |   |   |   |   |   |   |   |   |   |
# J |   |   |   |   |   |   |   |   |   |   |
#   -----------------------------------------
# }
#   end
end
