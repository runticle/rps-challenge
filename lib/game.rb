class Game
  MOVES = ['Rock', 'Paper', 'Scissors']
  WINS = [['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']]

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2

  end

  def self.create(player1, player2 = Computer.new)
    @game = @game || Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def result(player1, player2)
    if WINS.include? [player1, player2]
      "#{@player1.name} wins!"
    elsif player1 == player2
      "It's a hard earned draw."
    else
      "#{@player1.name} loses!"
    end
  end
end
