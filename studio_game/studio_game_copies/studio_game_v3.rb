def say_hello(name, health = 100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time}"
end
def time
  Time.now.strftime('%I:%M:%S')
end
puts say_hello("larry", 60)
puts say_hello("moe", 55)
puts say_hello("curly")
puts say_hello("Shemp", 90)
