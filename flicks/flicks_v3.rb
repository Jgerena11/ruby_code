class Movie

  def initialize(title, rank)
    @title = title.capitalize
    @rank = rank
  end
  def listing
    "#{@title} has a rank of #{@rank}"
    
  end
  attr_reader :rank
  attr_accessor :title
  def to_s
    "#{@title} has a rank of #{@rank}"
  end
end

movie1 = Movie.new("goonies", 10)
puts movie1.listing
puts movie1

movie2 = Movie.new("ghostbusters", 9)

puts movie1.title
