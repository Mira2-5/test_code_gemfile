require_relative '../lib/day_trader'

describe "the day_trader method" do
  it "should return the most profitable pair of days" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it "should return nil if prices always go down" do
    expect(day_trader([10, 9, 8, 7, 6, 5, 4])).to eq(nil)
  end

  it "should return [0, 1] for [1, 2]" do
    expect(day_trader([1, 2])).to eq([0, 1])
  end

  it "should return [0, 1] for [1, 1]" do
    expect(day_trader([1, 1])).to eq([0, 1])
  end
end
