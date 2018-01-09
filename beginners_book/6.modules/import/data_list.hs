import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

main :: IO ()
main = do
  print $ numUniques [1,1,1,1,2,2,2,3,3,3,3,3]
