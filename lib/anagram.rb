class Anagram
  def find word_list
    groups = Hash.new { Array.new }
    word_list.each do |word|
      groups[key_for word] = groups[key_for word] << word.chomp
    end
    groups.values.select do |words|
      words.length > 1
    end
  end

  def key_for word
    word.downcase.chars.sort.join
  end
end
