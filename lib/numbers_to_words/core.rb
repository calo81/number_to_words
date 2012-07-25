module Cacique
  module NumbersToWords
    def self.init
      Fixnum.class_eval do
        include Behaviours
      end
    end

    module Behaviours
      def in_words
        Library.convert(self)
      end
    end
  end
end