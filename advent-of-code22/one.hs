import Data.List
import Data.List.Split

main = do
    input <- readFile "input.txt"
    let solution = maximum $ map sum $  map (map (\x -> read x :: Integer)) $ map words $ splitOn "\n\n" input
    let solutionTwo = sum $ take 3 reverse $ sort $ map sum $  map (map (\x -> read x :: Integer)) $ map words $ splitOn "\n\n" input
    putStrLn $ show $ solution