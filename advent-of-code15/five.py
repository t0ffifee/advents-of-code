import hashlib

number = 0
string = "yzbqklnj"
while True:
    string_object = string + str(number)
    bytes_object = string_object.encode()
    hash_result = hashlib.md5(bytes_object)

    if hash_result.hexdigest()[:6] == "000000":
        print(hash_result)
        print(number)
        break
    number += 1