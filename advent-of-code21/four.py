f = open("testinput.txt", "r")

pre = f.readline()[0:-1]
called = []
for el in pre:
    if el.isdigit():
        called.append(int(el))

board = []

def checkwin(board):
    for hor in board:
        for el in hor:
            if el != 'X':
                break
            return True
    
    offset = 4
    for i in range(4):
        if board[i][offset] != 'X':
            break
        
        return True

    board = list(map(list,zip(*1))) # transposing the board

    for ver in board:
        for el in ver:
            if el != 'X':
                break
            return True

    for i in range(4):
        if board[i][i] != 'X':
            break
        return True

    

f.readline()
for i in range(5):
    l = f.readline()
    l = l[0:-1].split(' ')
    while '' in l:
        l.remove('')
    l = list(map(int, l))
    board.append(l)

board