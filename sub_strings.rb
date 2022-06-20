# dictionary array from TOP:
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
text1 = "below" # Word to be searched, from TOP
text2 = "Howdy partner, sit down! How's it going?" # Sentence to be searched, from TOP
# SUBSTRINGS Method returns a hash w/ each substring found
# in the original string + # occurrences
def substrings (text, substringsArray) 
  # explicit empty hash to fill with the results of our program and
  # default 0 so we can increment from something (line 18)
  substringHash = Hash.new(0)
  # Unless a sentence is broken into an array of strings, my method will only increment once
  # if it's present in the string, and not as many times as it actually exist in the text.
  textArray = text.downcase.split(" ") # create an array of words from the text
    substringsArray.map do |substring|
      textArray.each do |singleWord|
        # if the substring-to-text match is true, then create or increment the k|v pair
        if singleWord.include?(substring)
          substringHash[substring] += 1  # key is the array substring, value is an integer.
        else
          # do nothing
        end  
      end 
    end 
  puts substringHash # show the hash we built! 
end 

substrings(text1, dictionary) # Make it work with one word, "below" 
substrings(text2, dictionary) # Make it work with multiple words (a sentence)