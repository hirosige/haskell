import Data.List

wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

main :: IO ()
main = do
  print $ wordNums "wa wa wee wa"
