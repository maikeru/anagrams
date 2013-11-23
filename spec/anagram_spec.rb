require 'anagram'

describe Anagram do
  let(:anagram) { Anagram.new }
  it "returns an empty list for an empty list" do
    expect(anagram.find(Array.new)).to be_empty
  end

  it "returns all empty list when no anagrams exist" do
    input = %w[a b c d]
    expect(anagram.find(input)).to match_array Array.new
  end

  it "returns just the anagrams" do
    input = %w[ruby rots sort file list]
    expect(anagram.find(input)).to match_array %w[rots sort]
  end
end
