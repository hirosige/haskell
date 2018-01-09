import qualified Data.List as List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . List.nub

main :: IO ()
main = do
  print $ numUniques [1,1,1,1,2,2,2,3,3,3,3,3]
  print $ length $ words "I am fine"
  print $ List.group ["ant", "ant", "bug", "bug", "beatle"]
  print $ List.sort [5,4,3,7,2,1]
