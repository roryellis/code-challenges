# Function takes an array of arrays with two elements, age and handicap for multiple golfers. ex...[[47, 10],[57, 8],[18, 12], [82, 2]] Determines golfer status as Senior based on age >= 55 and handicap > 7. Otherwise status is Open.

def golferStatus(data)
  members = []

  data.each do |m| 
    if m[0] >= 55 && m[1] > 7
      members.push("Senior") 
    else 
      members.push("Open") 
    end
  end

  return members
end

puts golferStatus([[47, 10],[57, 8],[18, 12], [82, 2]])
# => ['Open', 'Senior', 'Open', 'Open']