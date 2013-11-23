class Anagram
  def find word_list
    dictionary = Hash.new
    word_list.each do |word|
      key = word.downcase.chars.sort.join
      dictionary[key] ||= Array.new
      dictionary[key] << word
    end
    dictionary.values.select do |words|
      words.length > 1
    end
  end
end
