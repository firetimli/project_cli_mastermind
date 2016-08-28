require_relative "Board"
require_relative "Computer"
require_relative "Board"
class MasterMind

  def initialize
    @player = Player.new
    @board = Board.new
    @computer = Computer.new
  end

  def play
    # if @player.pick_codebreaker?
      playing(@computer, @player)
    # else
    #   playing(@player,@computer)
    # end
  end

  def  playing maker,coder
    puts "welcome to the mastermind game"
    answer = maker.initialize_answer
    12.times do |i|

      input = coder.input_color
      puts "the input is #{input}"
      puts "the answer is #{answer}"

      @board.display input, i

      if game_over? input, answer
        puts "Congratulations, you have got the correct answer #{@board.answer}"
        break
      end

      @board.feedback answer, input
      puts "There's #{@board.feedback_result[:black]} exact guesses and #{@board.feedback_result[:white]} close result"
    end
  end

  def game_over? input, answer
    if input == answer
      true
    else
      false
    end
  end

end



new_game = MasterMind.new
new_game.play
