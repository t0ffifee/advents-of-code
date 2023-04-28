import Data.List
import Data.List.Split

parse :: String -> [Int]
parse xs = map (read::String->Int) $ splitOn "x" xs

calculate :: [Int] -> Int
calculate (l:w:h:_) = (sum $ map (2*) elements) + head elements
  where elements = sort [l*w, w*h, h*l]

-- I need the list sorted
calculateRibbon :: [Int] -> Int
calculateRibbon xs@(x:y:_) = x+x+y+y+mult
  where mult = foldr (*) 1 xs

main = do
  input <- readFile "input.txt"
  let solution = sum $ map (calculate . parse) $ words input
  let solutionTwo = sum $ map (calculateRibbon . sort . parse) $ words input
  putStrLn $ show solutionTwo