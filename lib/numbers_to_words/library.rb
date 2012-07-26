module Cacique
  module NumbersToWords
    class Library

      def initialize(lang)
        @lang = lang
        @dictionary = Dictionary.new(lang)
      end

      def convert(number)
        all_words = []
        each_triplet(number) do |triplet, index|
          words = ""
          options = {:index => index, :whole_number=>number}
          as_string = triplet.to_s
          words << " "<< cent(as_string, options) << " "<< dec(as_string,options) << " "<< unit(as_string, index, options)
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

      def cent(triplet_string, options)
        return '' if triplet_string.size < 3
        @dictionary.resolve_cent(triplet_string, options)
      end

      def dec(triplet_string, options)
        return '' if triplet_string.size < 2
        return @dictionary.resolve_dec(triplet_string[1]+triplet_string[2], options) if triplet_string.size == 3
        return @dictionary.resolve_dec(triplet_string[0]+triplet_string[1], options) if triplet_string.size == 2
      end

      def unit(triplet_string, index,options)
        return '' if triplet_string.size < 1
        return @dictionary.resolve_unit(triplet_string[2], index, options) if triplet_string.size == 3
        return @dictionary.resolve_unit(triplet_string[1], index, options) if triplet_string.size == 2
        return @dictionary.resolve_unit(triplet_string[0], index, options) if triplet_string.size == 1
      end

      def each_triplet(number)
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