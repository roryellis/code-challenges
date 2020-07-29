#Create a function that will return true or false when given a list of cardinal directions. For each cardinal direction in the list, you will walk one unit of time in the specified direction. To return good_walk(walk) => True, a walk must last 10 units of time, and return you to your starting point. 

def good_walk(walk):
    x = 0
    y = 0

    if len(walk) == 10:
        for direction in walk:
            if direction == "n":
                x += 1
            elif direction == "s":
                x -= 1
            elif direction == "e":
                y += 1
            elif direction == "w":
                y -= 1
        if x == 0 and y == 0:
            return True
        else:
            return False
    else:
        return False


print(good_walk(['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's']))
# => True

print(good_walk(['n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's', 'n', 's']))
# => False, walk is too long

print(good_walk(['n', 's', 'e', 'e', 'n', 's', 'n', 's', 'n', 's']))
# => False, walk does not return to start point
