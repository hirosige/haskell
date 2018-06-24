main :: IO ()
main = do
  print $ map (negate . abs . (+3)) [5,-3,-6,7,-3,2,-19,24]
