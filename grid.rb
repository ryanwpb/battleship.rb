require './ship'
class Grid
  def initialize
    @ships = []
    @hits =[]
  end

  def has_ship_on?(x, y)
    @ships.each do |ship|
      return ship if ship.covers?(x, y)
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
        ship = has_ship_on?(x, y)
        if ship && ship.hit_on?(x, y)
          output += " X |"
        elsif ship
          output += " O |"
        else
          output += "   |"
        end
      end
      puts output
    end
    puts   "  -----------------------------------------"
  end


  def fire_at(x, y)
    ship = has_ship_on?(x, y)
    if ship
      ship.fire_at(x, y)
    else
      return false #refute
    end
  end


  def sunk?
    return false if @ships.empty?
    all_sunk = true
    @ships.each do |s|
      all_sunk = false if !s.sunk?
    end
    all_sunk
  end

  def x_of(input)
     input[1..-1].to_i
  end

  def y_of(input)
   input.ord - "A".ord+1
  end

  



end
  # def sunk?
  #   return false if @ships == []
  #
  #
  #   @ships.each do |s|
  #   return false unless s.sunk
  # end
  #   true
