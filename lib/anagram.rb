# Your code goes here!

require 'pry'

class Anagram
  attr_accessor :word, :anagram_array

  def initialize(word)
    @word = word
  end

  def match(anagram_array)
    match_array = []
    anagram_array.each do |anagram|
      if anagram.split(//).sort == @word.split(//).sort
        match_array << anagram
      end
    end
    match_array
  end
end
