require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player (player)
    @players << player
  end

  def play(rounds)
    puts "there are #{@players.size} in #{@title}"

    @players.each do |player|
      puts player
    end

    treasures = TreasureTrove::TREASURES
    puts "\nthere are #{treasures.length} treasures to be found:\n"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points\n"
    end

    1.upto(rounds) do |round|
      puts "\nround: #{round}"

      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end


  end

  def print_stats
    strong_players, wimpy_players = @players.partition {|player| player.strong?}

    puts "\n#{title} statistics:\n"

    puts "#{strong_players.length} strong players:\n"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "#{wimpy_players.length} wimpy players:\n"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    puts "\nknuckleheads high scores:\n"
    @players.sort.each do |player|
      format_name = player.name.ljust(20, '.')
      puts "#{format_name} #{player.score}"
    end

    @players.each do |player|
      puts "\n#{player.name}'s point totals:\n#{player.points} grand total points\n"
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end
end
