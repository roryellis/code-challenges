# Class Instance method capitalizes the first letter of every word in string

class String
  def capitalizeFirsts
    words = self.split(' ')
    capWords = []
    words.each { |w| 
        cap = w.capitalize
        capWords.push(cap)
    }
    return capWords.join(' ')
  end
end

str = "We're no strangers to love";

puts str.capitalizeFirsts()