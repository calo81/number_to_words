require "rspec"
require "../lib/numbers_to_words"

describe Cacique::NumbersToWords do

  before(:each) do
    Cacique::NumbersToWords.init
  end

  it "should convert 1" do
    1.in_words.should == 'one'
  end

  it "should convert 2" do
      2.in_words.should == 'two'
  end


  it "should convert 44" do
      44.in_words.should == 'forty four'
  end

  it "should convert 142" do
      142.in_words.should == 'one hundred forty two'
  end

  it "should convert 1142" do
      1142.in_words.should == 'one thousand one hundred forty two'
  end

  it "should convert 12" do
      12.in_words.should == 'twelve'
  end

  it "should convert 1_234_153" do
    1_234_153.in_words.should == 'one million two hundred thirty four thousand one hundred fifty three'
  end

  it "should convert 0" do
      0.in_words.should == 'zero'
  end

  it "should convert 70" do
      70.in_words.should == 'seventy'
  end
end