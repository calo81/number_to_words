module Translations
  class << self
    attr_reader :indices, :numbers_unit, :numbers_dec, :numbers_cent
  end
  @indices = {'0'=>nil,
              '1'=>'thousand',
              '2'=>'million',
              '3'=>'billion'}

  @numbers_unit = {'1' => 'one',
                   '2' => 'two',
                   '3' => 'three',
                   '4' => 'four',
                   '0' => lambda { |options| options[:whole_number] == 0 ? 'zero' :  '' }}

  @numbers_dec = {'10' => 'ten',
                  '12' => 'twelve',
                  '4' => 'forty',
                  '5' => 'fifty',
                  '3' => 'thirty',
                  '7' => 'seventy'}

  @numbers_cent = {'1' => 'one hundred',
                   '2' => 'two hundred'}
end