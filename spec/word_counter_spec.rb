require_relative '../lib/word_counter'

describe "word_counter method" do
  it "counts exact words" do
    dictionary = ["below", "low"]
    expect(word_counter("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "counts words regardless of case and punctuation" do
    dictionary = ["how", "howdy", "partner", "sit"]
    text = "Howdy partner, sit down! How's it going?"
    result = word_counter(text, dictionary)
    expect(result).to eq({ "how"=>2, "howdy"=>1, "partner"=>1, "sit"=>1 })
  end

  it "returns only found words" do
    dictionary = ["hello", "world"]
    expect(word_counter("no match here", dictionary)).to eq({})
  end
end
