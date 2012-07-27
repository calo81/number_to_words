module Cacique
  module SpanishTranslations
    def indices
      {'0' => nil, '1' => 'mil ', '2' => 'millones ', '1#2' => 'millon ', '3' => 'mil millones '}
    end

    def numbers_unit
      {'1' => lambda { |options| options[:index]==0 ? 'uno ' : 'un ' },
       '2' => 'dos ',
       '3' => 'tres ',
       '4' => 'cuatro ',
       '5' => 'cinco ',
       '6' => 'seis ',
       '7' => 'siete ',
       '8' => 'ocho ',
       '9' => 'nueve ',
       '0' => lambda { |options| options[:whole_number] == 0 ? 'cero ' : '' }}
    end

    def numbers_dec
      {'10' => 'diez ',
       '11' => 'once ',
       '12' => 'doce ',
       '13' => 'trece ',
       '14' => 'catorce ',
       '15' => 'quince ',
       '1' => 'dieci',
       '10' => 'diez ',
       '2' => 'veinti',
       '20' => 'veinte ',
       '40' => 'cuarenta ',
       '4' => 'cuarenta y ',
       '5' => 'cincuenta y ',
       '3' => 'treinta y ',
       '6' => 'sesenta y ',
       '7' => 'setenta y ',
       '8' => 'ochenta y ',
       '9' => 'noventa y '}
    end

    def numbers_cent
      {'100' => 'cien ',
       '1' => 'ciento ',
       '2' => 'doscientos ',
       '3' => 'trescientos ',
       '4' => 'cuatrocientos ',
       '5' => 'quinientos ',
       '6' => 'seiscientos ',
       '7' => 'setecientos ',
       '8' => 'ochocientos ',
       '9' => 'novecientos '}
    end
  end
end