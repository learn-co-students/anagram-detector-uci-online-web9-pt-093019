# Your code goes here!
require 'pry'
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.select do |array_word|
      self.word.split("").sort == array_word.split("").sort
    end
  end
  
end