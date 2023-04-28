f = open("input.txt", "r")
l = f.readlines()
l = list(map(lambda x: x[0:-1], l))

def calcmost(l, index):
    zeroes = []
    ones = []
    sum = 0
    for el in l:
        num = int(el[index])
        if num == 1:
            ones.append(el)
            sum += num
        else:
            zeroes.append(el)
    
    moreones = sum >= len(l)/2
    if moreones:
        return 0, zeroes
    else:
        return 1, ones

index = 0
while len(l)>1:
    num, l = calcmost(l, index)
    index +=1

print(l)