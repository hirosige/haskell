import qualified Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . Data.List.nub

main :: IO ()
main = do
  print $ numUniques [1,1,1,1,2,2,2,3,3,3,3,3]
