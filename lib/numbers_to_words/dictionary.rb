module Cacique
  module NumbersToWords
    module Dictionary
      @indices = ['', 'thousand']
      @numbers_unit = {'1' => 'one', '2' => 'two', '3'=>'three', '4'=>'four'}
      @numbers_dec = {'10' => 'ten', '12' => 'twelve', '4'=>'forty'}
      @numbers_cent = {'1'=>'one hundred'}
      def self.resolve_cent(number)
        @numbers_cent[number[0]]
      end

      def self.resolve_dec(number)
        return @numbers_dec[number] if @numbers_dec[number]
        @numbers_dec[number[0]]
      end

      def self.resolve_unit(number, index)
         return @numbers_unit[number] if @indices[index].empty?
         return @numbers_unit[number]+" "+@indices[index]
      end
    end
  end
end