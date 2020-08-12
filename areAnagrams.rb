
# Function takes 2 strings and returns true if strings are Anagrams. 
def areAnagrams(word1, word2)
  def getLetters(w)
    return w.split('').sort
  end
  
  return getLetters(word1) == getLetters(word2)
end

# puts anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) 
# #  ['carer', 'racer']

puts areAnagrams('racer', 'carer')
#true
puts areAnagrams('racer', 'crazer')
# false