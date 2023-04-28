import Data.List
import Data.List.Split
import Data.Char

convertLine :: String -> [[Int]]
convertLine xs = map (map (read :: String -> Int)) $ map (\x -> splitOn "-" x) $ splitOn "," xs

check :: [[Int]] -> Int
check ((l1:l2:_):(l3:l4:_):_)
  | inter == as = 1
  | inter == bs = 1
  | otherwise = 0
  where as = [l1..l2]
        bs = [l3..l4]
        inter = intersect as bs

check2 :: [[Int]] -> Int
check2 ((l1:l2:_):(l3:l4:_):_)
  | (length inter) > 0  = 1
  | otherwise = 0
  where as = [l1..l2]
        bs = [l3..l4]
        inter = intersect as bs




main = do
  input <- readFile "input.txt"
  let solution = sum $ map (check2 . convertLine) $ words input 
  putStrLn $ show $ solution