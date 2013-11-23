require 'anagram'

describe Anagram do
  let(:anagram) { Anagram.new }
  it "returns an empty list for an empty list" do
    expect(anagram.find(Array.new)).to be_empty
  end
end
