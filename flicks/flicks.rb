def movie_listing(title, rank)
  current_time = Time.new
  today = current_time.strftime("%A")
  "Movie: #{title.capitalize} has a rank of #{rank} as of #{today}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 12)
