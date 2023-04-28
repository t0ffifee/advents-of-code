import Data.List
import Data.Char

calculatePriority :: Char -> Int
calculatePriority c
  | isLower c = ord c - 96
  | otherwise = ord c - 38

splitString :: String -> (String, String)
splitString xs = (take half xs, drop half xs)
  where half = div (length xs) 2

itemFind :: String -> Char
itemFind xs = item   
  where (front, back)= splitString xs 
        (item:_) = intersect front back

f :: [String] -> Int 
f [] = 0
f (x:y:z:rest) = calculatePriority badge + f rest
  where badge = head $ foldr1 intersect [x, y, z] 

main = do
  input <- readFile "input.txt"
  let solution = sum $ map (calculatePriority . itemFind) $ words input
  let solution2 = f $ words input
  putStrLn $ show $ solution2