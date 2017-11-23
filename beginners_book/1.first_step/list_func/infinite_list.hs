main :: IO ()
main = do
  let infinite_list = [13,26..]::[Int]
  print $ take 100 infinite_list
