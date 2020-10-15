require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path('lib', __dir__)

require 'board'
require 'game'
require 'display'
require 'player'

class Application

  def welcome
    puts "-----------------------------------------------------------------------------------------------------\n"
    sleep (1)
    puts "│                    DAMN ! Bienvenue sur le Tic-Tac-Toe le plus hype du moment !                   │\n"
    sleep (1)
    puts "│            Prépare-toi à mettre en place des grosses stratégies à base de X et de O...            │\n"
    sleep (1)
    puts "│                                        100% POO compliant                                         │\n"
    sleep (1)
    puts "-----------------------------------------------------------------------------------------------------\n"
    puts "\n"
  end


  def continue?
    input = nil
    puts "C'était cool non ? On continue ? Y/N"
    print '> '
    input = gets.chomp
    if input.downcase == 'y'
      true
    elsif input.downcase == 'n'
      false
    end
  end


  def perform

    welcome
    keep_playing = true

    while keep_playing
      my_game = Game.new
      Tk.update
      my_game.play
      keep_playing = continue?
    end

    Tk.mainloop

  end

end


Application.new.perform
