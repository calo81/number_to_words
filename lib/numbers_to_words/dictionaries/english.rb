module Cacique
  module EnglishTranslations
    def indices
      {'0' => nil,
                    '1' => 'thousand ',
                    '2' => 'million ',
                    '3' => 'billion '}
    end

    def numbers_unit
      {'1' => 'one ',
                         '2' => 'two ',
                         '3' => 'three ',
                         '4' => 'four ',
                         '5' => 'five ',
                         '6' => 'six ',
                         '7' => 'seven ',
                         '8' => 'eight ',
                         '9' => 'nine ',
                         '0' => lambda { |options| options[:whole_number] == 0 ? 'zero' : '' }}
    end

    def numbers_dec
      {'10' => 'ten ',
                        '11' => 'eleven ',
                        '12' => 'twelve ',
                        '13' => 'thirteen ',
                        '14' => 'fourteen ',
                        '15' => 'fifteen ',
                        '16' => 'sixteen ',
                        '17' => 'seventeen ',
                        '18' => 'eighteen ',
                        '19' => 'nineteen ',
                        '4' => 'forty ',
                        '5' => 'fifty ',
                        '3' => 'thirty ',
                        '6' => 'sixty ',
                        '7' => 'seventy ',
                        '8' => 'eighty ',
                        '9' => 'ninety ',
                        '2' => 'twenty '}
    end

    def numbers_cent
                        {'1' => 'one hundred ',
                         '3' => 'three hundred ',
                         '4' => 'four hundred ',
                         '5' => 'five hundred ',
                         '6' => 'six hundred ',
                         '7' => 'seven hundred ',
                         '8' => 'eight hundred ',
                         '9' => 'nine hundred ',
                         '2' => 'two hundred '}
    end
  end
end