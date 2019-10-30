# Your code goes here!
require 'pry'
class Anagram
attr_accessor :word

def initialize(string)
@word = string
end

def match(array)
  # 1. delete if not same length
array.delete_if do |word|
  word.length != @word.length
end #end of block delete_if
  # 2. sort @word and each word in array
  original_words = array # need to save original word

 new_array = [] # because collect wasn't modifying my original array >:(
array.each do |word|
new_array << word.chars.sort
end #end of collect block
sorted_word = @word.chars.sort

 # 3 compare each word in array to @word char by char
match_array = []

new_array.each.with_index do |word, index|
  match = true
  i = 0
  #match and i reset at beginning of each iteration
  while i < word.length do
    if word[i] != sorted_word[i] #if not equal, match is false
      match = false
    end
    i += 1
  end # end of while loop
  if match == true
    match_array << original_words[index]
  end
end # end of each block
match_array
end #end of match method


end #end of class anagram
