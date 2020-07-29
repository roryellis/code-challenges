# Function takes a sentence argument(string) reverses the letters of every word with 5 or more letters, and returns the sentence.

def twistWords(string)
  words = string.split(' ')

  twistedWords = []

  words.each do |w|
    if w.length >= 5 
    twistedWords.push(w.reverse)
    else 
    twistedWords.push(w)
    end
  end

  return twistedWords.join(' ')
end

puts twistWords('Able to leap tall buildings in a single bound')
# => 'Able to leap tall sgnidliub in a elgnis dnuob'