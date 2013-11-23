class Anagram
  def find word_list
    dictionary = Hash.new
    word_list.each do |word|
      key = word.downcase.chars.sort.join
      dictionary[key] ||= Array.new
      dictionary[key].push word
    end
    result = word_list.select do |word|
      key = word.downcase.chars.sort.join
      true if dictionary[key].length > 1
    end
    return result
  end
end
