require 'anagram'

describe Anagram do
  let(:anagram) { Anagram.new }
  it "returns an empty list for an empty list" do
    anagram.find(Array.new).should be_empty
  end
end
