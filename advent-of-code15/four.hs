import qualified Data.ByteString.Lazy as LB
import Data.Digest.Pure.MD5
import Data.List
import Data.List.Split

main :: IO ()
main = do
  input <- readFile "input.txt"
  let md5Digest = md5 fileContent
  print md5Digest


  -- let solution = 0
  -- putStrLn $ show solution