require_relative '../lib/anagram'

filename = ARGV[0]

anagram = Anagram.new
File.open(filename, "r") do |file|
  results = anagram.find file
  results.each do |wordlist|
    puts wordlist.join(", ")
  end
end
