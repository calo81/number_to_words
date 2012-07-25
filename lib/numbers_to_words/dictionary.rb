module Cacique
  module NumbersToWords
    class Dictionary

      def initialize(lang)
        require_relative "dictionaries/#{lang}"
        @indices = Translations.indices
        @numbers_unit = Translations.numbers_unit
        @numbers_dec = Translations.numbers_dec
        @numbers_cent = Translations.numbers_cent
      end

      def resolve_cent(number, options)
        options[:has_cents]=true
        @numbers_cent[number[0]]
      end

      def resolve_dec(number, options)
        options[:has_decs]=true
        if @numbers_dec[number]
          options[:fully_resolved]=true
          return @numbers_dec[number]
        end
        @numbers_dec[number[0]]
      end

      def resolve_unit(number, index, options)
        return '' if options[:fully_resolved]
        number_word = @numbers_unit[number].respond_to?(:call) ? @numbers_unit[number].call(options) : @numbers_unit[number]
        return number_word if @indices[index].nil?
        return number_word+" "+@indices[index]
      end
    end
  end
end