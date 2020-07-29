
# Function should take any integer greater than or equal zero and return the number with digits in descending order.
def sortDigitsDecending(num):
    if num > 0:
        nums = list(map(str, str(num)))
        nums.sort(reverse=True)
        newNum = int(''.join(nums))
        return newNum
    else:
        return

print(sortDigitsDecending(1234567899876543210))