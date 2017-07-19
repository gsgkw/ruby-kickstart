# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor 'bottles'

def initialize(bottles)
bottles = 99 if bottles > 99
bottles = 0 if bottles < 0
self.bottles = bottles
end

def print_song
  while self.bottles > 0
    n = self.bottles
      puts "#{wordy(n)} #{bottle(n)} of beer on the wall,"
      puts "#{wordy(n)} #{bottle(n)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{wordy (n - 1)} #{bottle(n-1)} of beer on the wall."
    self.bottles -= 1
  end
end

def bottle(n)
  if n == 1 then 'bottle' else 'bottles' end
end

def wordy(n)
if n >= 0 && n <= 19
['Zero', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'][n]
elsif n % 10 == 0
['Twenty','Thirty','Forty','Fifty','Sixty','Seventy','Eighty','Ninety'][n/10 - 2]
else
"#{wordy(n-n%10)}-#{wordy(n%10)}".downcase.capitalize
end
end

end
