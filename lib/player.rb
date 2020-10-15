require 'bundler'
Bundler.require


class Player

  attr_accessor :name, :symbol, :coords
  
  def initialize(player_symbol_to_save)
    @symbol = player_symbol_to_save
    @name = ask_player_name  
  end
  

  def ask_player_name
    puts "Rentre le pseudo du joueur #{@symbol} : "
    print "> "
    name = gets.chomp
  end


  def get_coordinates
    input = nil
    until input.is_a?(Integer) && (1..9).include?(input)
    puts "C'est à ton tour #{self.name} !\nChoisis un chiffre entre 1 à 9 pour ajouter un #{self.symbol} à la grille."
    print "> "
    input = gets.chomp.to_i
    end 
    @coords = input
    
  end


  # def is_location_available?(coords_case_idx)
  #   @board_cases[coords_case_idx] == ""
  # end

end