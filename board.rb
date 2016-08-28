require_relative "Player"
require_relative "Computer"


class Board
  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def display input, i
    puts "The #{i} time"
    puts "your input is #{input}"
  end

  def feedback answer, input
    count_same_color = 0
    count_same_both = 0
    answer.each_with_index do |ans, i|
      input.each_with_index  do |inp,j|
        if ans == inp && i != j
          count_same_color += 1
        elsif ans == inp && i == j
          count_same_both +=1
        end

      end
    end
    puts "you have #{count_same_color} number of balls with same color but different position"
    puts "you have #{count_same_both} number of balls with same color and different position"

  end


end
