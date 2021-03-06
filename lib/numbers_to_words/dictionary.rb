module Cacique
  module NumbersToWords
    class Dictionary

      def initialize(lang)
        load_lang_translations(lang)
      end

      def load_lang_translations(lang)
        require_relative "dictionaries/#{lang}"
        extend Cacique.module_eval("#{lang.capitalize}Translations")
      end

      def resolve_cent(number, options)
        options[:has_cents]=true
        numbers_cent[number[0]]
      end

      def resolve_dec(number, options)
        options[:has_decs]=true
        if numbers_dec[number]
          options[:fully_resolved]=true
          return numbers_dec[number]
        end
        numbers_dec[number[0]]
      end

      def resolve_unit(number, index, options)
        index = index.to_s
        return '' if options[:fully_resolved] and indices[index].nil?
        return '' + indices[index] if options[:fully_resolved]
        number_word = numbers_unit[number].respond_to?(:call) ? numbers_unit[number].call(options) : numbers_unit[number]
        return number_word if indices[index].nil?
        return number_word+indices[number+"#"+index] if indices[number+"#"+index]
        return number_word+indices[index]
      end
    end
  end
end