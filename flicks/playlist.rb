require_relative 'movie'
require_relative 'waldorf_And_statler'
def play
  puts "#{name}'s playlist:"
  puts @movies

  @movies.each do |movie|
    WaldorfAndStatler.review(movie)
  end
end
