#Function takes an rgb color value and returns it converted to a hexidecimal value. 

def rgbToHex(r, g, b)
  @hexLetters = {10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F'}
  
  def getHexDigit(n)
    if n >=0 && n <=9
      return n
    elsif n > 16
      return nil
    else
      return @hexLetters[n]
    end
  end

  def getHexVal(n)
    if n > 255
        n = 255
    elsif n < 0 
        n = 0
    end

    f = n/16.to_f
    s = (f-f.to_i)*16

    return [getHexDigit(f.to_i),getHexDigit(s.to_i)]
  end

  red = getHexVal(r)
  green = getHexVal(g)
  blue = getHexVal(b)

  hex = red.concat(green).concat(blue).join('')

  return hex
end



puts rgbToHex(255, 255, 255) # returns FFFFFF
puts rgbToHex(255, 255, 300) # returns FFFFFF
puts rgbToHex(0,0,0) # returns 000000
puts rgbToHex(148, 0, 211) # returns 9400D3