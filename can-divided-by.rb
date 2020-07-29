# Function takes an integer greater than 1 and returns an array of whole integers that the input can be equally divided among, sorted ascending, excluding 1 and the input integer. If integer is prime, function returns a string "#{integer} is prime"

def canDivideBy(n)
  div = n - 1
  divs = []
  while div > 1
    if n % div === 0
      divs.push(div)
    end
    div -= 1
  end

  if divs.length() === 0
    return "#{n} is prime"
  else 
    return divs.sort()
  end
end

puts canDivideBy(789)
# => [3, 263]