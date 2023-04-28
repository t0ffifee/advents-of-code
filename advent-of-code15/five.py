
substrings = [ "ab", "cd", "pq", "xy"]
vowels = "aeiou"
nice_sum = 0

def substring_test(string):
  for substring in substrings:
    if substring in string:
      return False
  return True

def letter_twice_test(string):
  for i in range(0, len(string)-1):
    char = string[i]
    next_char = string[i+1]
    if char == next_char:
      return True
  return False

def three_vowels_test(string):
  vowel_sum = 0
  for c in string:
    if c in vowels:
      vowel_sum += 1
  return vowel_sum >= 3

def pair_repeat(string):
  for i in range(0, len(string)-1):
    substring = string[i] + string[i+1]
    if substring in string[i+2:]:
      return True
  return False

def letter_repeat(string):
  for i in range(0, len(string)-2):
    c = string[i]
    x = string[i+2]
    if c == x:
      return True
  return False

with open('input.txt', 'r') as file:
  for string in file:
    if pair_repeat(string) and letter_repeat(string):
      nice_sum += 1
      print(string)

print(nice_sum)