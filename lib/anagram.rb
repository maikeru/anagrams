class Anagram
  def find word_list
    dictionary = Hash.new
    word_list.each do |word|
      key = word.downcase.chars.sort.join
      dictionary[key] ||= Array.new
      dictionary[key].push word
    end
    result = Array.new
    dictionary.each do |key, words|
      if words.length > 1
        result.push words
      end
    end
    return result
  end
end
