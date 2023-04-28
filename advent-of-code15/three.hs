import Data.List
import Data.List.Split

parse :: String -> (Int, Int) -> [(Int, Int)]
parse [] _ = []
parse (d:ds) (x, y)
  | d == '^' = (x, y+1) : parse ds (x, y+1)
  | d == '>' = (x+1, y) : parse ds (x+1, y) 
  | d == 'v' = (x, y-1) : parse ds (x, y-1)
  | d == '<' = (x-1, y) : parse ds (x-1, y)

robotString :: String -> String
robotString xs = [ x | (x, n) <- zip xs [1..], even n]

santaString :: String -> String
santaString xs = [ x | (x, n) <- zip xs [1..], odd n]

main = do
  input <- readFile "input.txt"
  let santa = parse (santaString input) (0,0)
  let robot = parse (robotString input) (0,0)
  let solution = length $ nub $ santa ++ robot

  putStrLn $ show solution