module Cacique
  module NumbersToWords
    def self.init(lang = :english)
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
          define_instance_method(lang)
        end

        def libraries
          @libraries
        end
      end

      def self.define_instance_method(lang)
        define_method("in_#{lang}") do
          Behaviours.libraries[lang].convert(self)
        end
      end
    end
  end
end