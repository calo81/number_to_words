module Cacique
  module NumbersToWords
    def self.init(lang = :eng)
      Fixnum.class_eval do
        Behaviours.lang = lang
        include Behaviours
      end
    end

    module Behaviours
      class << self
        attr_reader :lang

        def lang=(lang)
          @lang = lang
          @libraries ||= {}
          @libraries[lang] = Library.new(lang)
        end

        def libraries
          @libraries
        end
      end

      def in_words
        Behaviours.libraries[Behaviours.lang].convert(self)
      end
    end
  end
end