require 'bundler'
Bundler.require

require_relative 'board'

class Player

  attr_accessor :name, :symbol
  
  def initialize(player_symbol_to_save)
    @symbol = player_symbol_to_save
    @name = ask_player_name  
  end
  

  def ask_player_name
    puts "Le joueur #{@symbol} est appelé à la barre ! Indique ton pseudo ci-dessous camarade."
    print "> "
    name = gets.chomp
  end


  def get_coordinates
    input = nil
    until input.is_a?(Integer) && (1..9).include?(input)
    puts "C'est à ton tour #{name} !\nChoisis un chiffre entre 1 à 9 pour ajouter un #{symbol} à la grille."
    print "> "
    input = gets.chomp.to_i
    end 
    coords = input
  end


end