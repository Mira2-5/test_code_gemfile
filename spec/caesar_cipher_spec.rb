require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "should shift letters by the key" do
    expect(caesar_cipher("abc", 1)).to eq("bcd")
  end

  it "should wrap around from z to a" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
  end

  it "should keep capital letters capital" do
    expect(caesar_cipher("Abc", 2)).to eq("Cde")
  end

  it "should leave non-letter characters unchanged" do
    expect(caesar_cipher("Hello, world!", 5)).to eq("Mjqqt, btwqi!")
  end

  it "should handle large keys (greater than 26)" do
    expect(caesar_cipher("abc", 29)).to eq("def") # 29 % 26 = 3
  end
end
