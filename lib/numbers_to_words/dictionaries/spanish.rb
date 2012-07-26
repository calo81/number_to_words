module Translations
  class << self
    attr_reader :indices, :numbers_unit, :numbers_dec, :numbers_cent
  end
  @indices = {'0'=>nil, '1'=>'mil', '2'=>'millones', '1#2'=>'millon', '3'=>'mil millones'}
  @numbers_unit = {'1' => lambda {|options| options[:index]==0 ? 'uno' : 'un'},
                   '2' => 'dos',
                   '3' => 'tres',
                   '4' => 'cuatro',
                   '5' => 'cinco',
                   '0' => lambda { |options| options[:whole_number] == 0 ? 'cero' : ''}}

  @numbers_dec = {'10' => '10',
                  '21' => 'veintiuno',
                  '20' => 'veinte',
                  '12' => 'doce',
                  '40' => 'cuarenta',
                  '4' => 'cuarenta y',
                  '5' => 'cincuenta y',
                  '3' => 'treinta y',
                  '7' => 'setenta y'}

  @numbers_cent = {'100' => 'cien',
                    '1' => 'ciento',
                   '2' => 'doscientos'}
end