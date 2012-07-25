module Cacique
  module NumbersToWords
    module Library
      def self.convert(number)
        all_words = []
        each_triplet(number) do |triplet, index|
          words = ""
          as_string = triplet.to_s
          words << " "<< cent(as_string, index) << " "<< dec(as_string, index) << " "<< unit(as_string, index)
          words.strip!
          all_words << words
        end
        final = ""
        all_words.reverse.each do |amount|
          final << amount + " "
        end
        final.strip
      end

      private

      def self.cent(triplet_string, index)
        return '' if triplet_string.size < 3
        Dictionary.resolve_cent(triplet_string)
      end

      def self.dec(triplet_string, index)
        return '' if triplet_string.size < 2
        return Dictionary.resolve_dec(triplet_string[1]+triplet_string[2]) if triplet_string.size == 3
        return Dictionary.resolve_dec(triplet_string[0]+triplet_string[1]) if triplet_string.size == 2
      end

      def self.unit(triplet_string, index)
        return '' if triplet_string.size < 1
        return Dictionary.resolve_unit(triplet_string[2], index) if triplet_string.size == 3
        return Dictionary.resolve_unit(triplet_string[1], index) if triplet_string.size == 2
        return Dictionary.resolve_unit(triplet_string[0], index) if triplet_string.size == 1
      end

      def self.each_triplet(number)
        as_int = number.to_i
        index = 0
        begin
          resto = as_int % 1000
          yield resto, index
          as_int /= 1000
          index += 1
        end until as_int == 0
      end
    end
  end
end