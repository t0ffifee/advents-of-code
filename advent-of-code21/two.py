f = open("input.txt", "r")
l = f.readlines()

total = len(l)
sums = [0,0,0,0,0,0,0,0,0,0,0,0]

def summer(binnum):
    for index, bit in enumerate(binnum):
        if bit == "\n":
            break
        else:
            sums[index] += int(bit)

for el in l:
    summer(el)

gamma = []
epsilon = []

for s in sums:
    if s > total/2:
        gamma.append("1")
        epsilon.append("0")
    else:
        gamma.append("0")
        epsilon.append("1")

g = int("".join(gamma), base=2)
e = int("".join(epsilon), base=2)

g*e