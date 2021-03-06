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
#require 'pry'
# binding.pry
require 'linguistics'
Linguistics::use(:en)

class BeerSong


  attr_accessor :beers

    def initialize(beers)
      beers = 0  if beers < 0
      beers = 99 if beers > 99
      self.beers = beers
    end

    def print_song
      if beers.zero?
        String.new
      else
        beers.downto 1 do |i|
          print_stanza(i)
        end
      end
    end

    def print_stanza(n)
      puts "#{bottle(n).capitalize} of beer on the wall,"    ,
           "#{bottle(n)} of beer,"                           ,
           "Take one down, pass it around,"                 ,
           "#{bottle(n-1)} of beer on the wall."
    end

    def bottle(n)
      case n
        when 0
           "no more bottles"
        when 1
           "one bottle"
        else
           "#{n.en.numwords} bottles"
        end
      end
    end

#binding.pry
