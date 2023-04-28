import Data.List
import Data.List.Split

calcFightPoints :: (Char, Char) -> Int
calcFightPoints ('A', 'X') = 3
calcFightPoints ('B', 'Y') = 3
calcFightPoints ('C', 'Z') = 3
calcFightPoints ('A', 'Y') = 6
calcFightPoints ('B', 'Z') = 6
calcFightPoints ('C', 'X') = 6
calcFightPoints ('A', 'Z') = 0
calcFightPoints ('B', 'X') = 0
calcFightPoints ('C', 'Y') = 0

calcToolPoints :: (Char, Char) -> Int
calcToolPoints (_, tool)
    | tool == 'X' = 1
    | tool == 'Y' = 2
    | tool == 'Z' = 3

calcPoints :: (Char, Char) -> Int
calcPoints ('A', 'X') = 3
calcPoints ('A', 'Y') = 4
calcPoints ('A', 'Z') = 8
calcPoints ('B', 'X') = 1
calcPoints ('B', 'Y') = 5
calcPoints ('B', 'Z') = 9
calcPoints ('C', 'X') = 2
calcPoints ('C', 'Y') = 6
calcPoints ('C', 'Z') = 7


main = do
    input <- readFile "input.txt"
    let fights = map (\(x:_:y:_) -> (x,y)) $ lines input
    let fightPoints = map calcFightPoints fights
    let toolPoints = map calcToolPoints fights
    let solution = sum $ zipWith (+) fightPoints toolPoints
    let solution2 = sum $ map calcPoints fights
    putStrLn $ show $ solution2