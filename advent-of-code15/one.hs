-- Instructions, Level, Index
parse :: (String, Int, Int) -> Int
parse (_, -1, i) = i
parse ((x:xs), l, i)
  | x == '(' = 1 + parse (xs, l+1, i+1)
  | x == ')' = -1 + parse (xs, l-1, i+1)

main = do
  input <- readFile "input.txt"
  let solution = parse (input, 0, 0)
  putStrLn $ show solution