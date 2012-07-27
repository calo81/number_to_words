require "rspec"
require "../lib/numbers_to_words"

describe Cacique::NumbersToWords do
  describe "In english" do
    before(:each) do
      Cacique::NumbersToWords.init
    end

    it "should convert 1" do
      1.in_english.should == 'one'
    end

    it "should convert 2" do
      2.in_english.should == 'two'
    end


    it "should convert 44" do
      44.in_english.should == 'forty four'
    end

    it "should convert 142" do
      142.in_english.should == 'one hundred forty two'
    end

    it "should convert 1142" do
      1142.in_english.should == 'one thousand one hundred forty two'
    end

    it "should convert 12" do
      12.in_english.should == 'twelve'
    end

    it "should convert 1_234_153" do
      1_234_153.in_english.should == 'one million two hundred thirty four thousand one hundred fifty three'
    end

    it "should convert 0" do
      0.in_english.should == 'zero'
    end

    it "should convert 70" do
      70.in_english.should == 'seventy'
    end

    it "should convert 717" do
          717.in_english.should == 'seven hundred seventeen'
    end

    it "should convert 1200" do
              1200.in_english.should == 'one thousand two hundred'
    end
  end

  describe "In spanish" do
    before(:each) do
      Cacique::NumbersToWords.init(:spanish)
    end

    it "should convert 1" do
      1.in_spanish.should == "uno"
    end

    it "should convert 21" do
      21.in_spanish.should == "veintiuno"
    end

    it "should convert 40" do
          40.in_spanish.should == "cuarenta"
    end

    it "should convert 45" do
      45.in_spanish.should == "cuarenta y cinco"
    end

    it "should convert 135_000" do
      135_000.in_spanish.should == "ciento treinta y cinco mil"
    end

    it "should convert 1_220_121" do
      1_220_121.in_spanish.should == "un millon doscientos veinte mil ciento veintiuno"
    end

    it "should convert 2_134_220_121" do
      2_134_220_121.in_spanish.should == "dos mil millones ciento treinta y cuatro millones doscientos veinte mil ciento veintiuno"
    end

    it "should convert 16" do
      16.in_spanish.should == "dieciseis"
    end
  end

  describe "Two languages at the same time" do
    before(:each) do
      Cacique::NumbersToWords.init(:spanish)
      Cacique::NumbersToWords.init(:english)
    end

    it "should convert 16" do
          16.in_spanish.should == "dieciseis"
          16.in_english.should == "sixteen"
    end
  end
end