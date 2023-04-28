f = open("input.txt", "r")
l = f.readlines()

l = list(map(lambda x: int(x), l))

l = list(map(lambda x, y, z: x+y+z, l, l[1:], l[2:]))

increases = 0
first = l[0]
second = l[1]
index = 2

while True:
    if first < second:
        increases += 1
    first = second
    try:
        second = l[index]
        index += 1
    except:
        break


print(increases)