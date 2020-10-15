require 'bundler'
Bundler.require

require_relative 'board'
require_relative 'player'

class Game

  attr_accessor :player_X, :current_player, :player_O

  def initialize
    @board = Board.new
    Tk.update
    @player_X = Player.new(:X)
    @player_O = Player.new(:O)
    welcome_players_on_screen
    Tk.update
  end


  def welcome_players_on_screen
    @text = TkText.new(@root) do
      font TkFont.new("family" => 'Helvetica', "size" => 20)
      place('x' => 320, 'y' => 60, 'height' => 295, 'width' => 195)
    end

    @text.insert 'end', "Bienvenue sur\n\nTic-Tac-Toe :D"

    @text = TkText.new(@root) do
      font TkFont.new("family" => 'Helvetica', "size" => 16)
      place('x' => 320, 'y' => 200, 'height' => 295, 'width' => 195)
    end

    @text.insert 'end', "#{@player_X.name} : X\n#{@player_O.name} : O"

  end


  def turn

    loop do
    
    coords = @player_X.get_coordinates
    @board.cross(coords)

    Tk.update

    coords = @player_O.get_coordinates
    @board.circle(coords)

    Tk.update

    end

  end



    

end


go = Game.new
go.turn

Tk.mainloop
























# def Play

  # Boucle !game_over:  # 
  #   Demander les coordonées & les vérifier & appliquer
  #   Update le board 
  #   Si le jeu est fini ?
  #     Afficher msg victoire ou match nul
  #     Stop la Boucle
  #   Sinon 
  #     Passer à player 2 et continuer à boucler







  # def input_to_index 
  #   #prend l'input du joueur - 1 
  # end

  # def player_move(input_to_index)
  #   #interagit avec la case
  # end

  # def is_valid? 
  #   #vérifier si le move est valide -> case deja prise ?
  # end

  # def is_still_going?
  #   #vérifier si conditions de victoire == true
  #   #ou si board full == tie
  # end

  # def player_turn
  #   #a qui le tour ?
  # end
