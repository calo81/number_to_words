number_to_words
=====================
 
Convert number quantities to words.

Currently supporting english and spanish. Is very easy to use:

At startup
      require 'numbers_to_words'
      Cacique::NumbersToWords.init

That will enhance Fixnum

Then later at any time

      16.in_english == "sixteen"    #=> true

For spanish you would use

      Cacique::NumbersToWords.init(:spanish)

      16.in_spanish == "dieciseis"    #=> true



Here is some irb output

1.9.2-p290 :001 > require 'numbers_to_words' 

 => true
 
1.9.2-p290 :002 > Cacique::NumbersToWords.init

 => Fixnum
1.9.2-p290 :003 > 12.in_english
 => "twelve"
1.9.2-p290 :004 > 1_234_122.in_english
 => "one million two hundred thirty four thousand one hundred twenty two"
1.9.2-p290 :005 > 999999.in_english
 => "nine hundred ninety nine thousand nine hundred ninety nine"
1.9.2-p290 :006 >