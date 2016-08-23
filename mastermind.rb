class MasterMind

  def initialize
    @player = Player.new
    @board = Board.new
    @computer = Computer.new
  end

  def play
    if @player.pick_codebreaker?
      playing(@computer, @player)
    else
      playing(@player,@computer)
    end
  end

  private

  def  playing(maker,coder)
    answer = maker.initialize_answer
    12.times do |i|

      input = coder.input
      @board.display input, i
      if game_over?
        puts "Congratulations, you have got the correct answer #{@board.answer}"
        break
      end
      @board.feedback answer, input
      puts "There's #{@board.feedback_result[:black]} exact guesses and #{@board.feedback_result[:white]} close result"
  end

  def game_over? input, answer
    if input == answer
      true
    else
      false
    end
  end

  private

end
