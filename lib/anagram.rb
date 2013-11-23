class Anagram
  def find word_list
    dictionary = Hash.new
    word_list.each do |word|
      key = word.downcase.chars.sort.join
      dictionary[key] ||= Array.new
      dictionary[key] << word
    end
    result = Array.new
    dictionary.each_value do |words|
      if words.length > 1
        result. << words
      end
    end
    return result
  end
end
