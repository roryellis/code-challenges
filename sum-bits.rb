#Function takes a positive integer argument, converts to binary, and returns the total number of bits that equal 1.

def sum_bits(n)
  b = n.to_s(2).split('')
  sum = 0
  b.each { |c| 
    if c === '1'
        sum += 1
    end
  }

  return sum
end

puts sum_bits(12346789)
# => 13