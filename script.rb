require 'pry-byebug'

def substrings(word, dictionary)
    containedWords = []
    word = word.split(" ")
    hash = {}
    word.each do |word|
        dictionary.each do |dictWord|
            if word.downcase.include?(dictWord.downcase) 
                puts dictWord
                if hash.key?(dictWord)
                    value = hash[dictWord]
                    hash[dictWord] = value + 1
                else
                    hash[dictWord] = 1
                end
                p hash
            end
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below the low mountain", dictionary)