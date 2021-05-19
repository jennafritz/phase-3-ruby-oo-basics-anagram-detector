require 'pry'
# Your code goes here!
class Anagram

        attr_accessor :anagram

        def initialize(anagram)
            @anagram = anagram
        end

        def match(possible_anagrams_array)
            actual_anagrams = possible_anagrams_array.select do |word|
                word_array = word.split("").sort
                anagram_array = self.anagram.split("").sort
                word_array == anagram_array
                # binding.pry
            end
            actual_anagrams
        end
        
end