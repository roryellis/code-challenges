# Function accepts a list of name hashes i.e. {name: Steve}, and returns a properly formatted string listing each name separated by a comma, with the last two names separated with an &. A single name will return the name alone, and two names will be separated by only &. 

def listNames names
  unless names.length == 0
    str = ''
    str+=names.first[:name]
    if names.length > 1
        last = names.pop[:name]
    end
    if names.drop(1).length > 0
        names.drop(1).each {|n| 
        name = n[:name]
        str+=", #{name}"}
    end
    if last
        str+=" & #{last}"
    end

    return str
  end
  return ''
end

# puts listNames([ {name: 'Steve'}, {name: 'Jack'}, {name: 'Joe'} ])
# returns 'Steve, Jack & Joe'

# puts listNames([ {name: 'Steve'}, {name: 'Jack'} ])
# returns 'Steve & Jack'

# puts listNames([ {name: 'Steve'} ])
# returns 'Steve'

# puts listNames([])
# returns ''