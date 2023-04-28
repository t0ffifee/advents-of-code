import re

lights = [[0]*1000 for x in range(1000)]
coordinate_regex = r"\d+,\d+"

def assign_coordinates(matches):
  matches = list(map(lambda x: x.split(","), matches))
  return (int(matches[0][0]), int(matches[0][1]), int(matches[1][0]), int(matches[1][1]))

with open('input.txt', 'r') as file:
  for string in file:
    matches = re.findall(coordinate_regex, string)
    x1, y1, x2,y2 = assign_coordinates(matches)

    if "toggle" in string:
      for i in range(x1, x2+1):
        for j in range(y1, y2+1):
          lights[i][j] += 2

    elif "turn on" in string:
      for i in range(x1, x2+1):
        for j in range(y1, y2+1):
          lights[i][j] += 1

    elif "turn off" in string:
      for i in range(x1, x2+1):
        for j in range(y1, y2+1):
          if lights[i][j] > 0:
            lights[i][j] -= 1

light_sum = 0
for row in lights:
  for light in row:
    light_sum += light

print(light_sum)