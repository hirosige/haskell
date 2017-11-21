main :: IO ()
main = do
  let list = [5,4,3,2,1]::[Int]
  print $ take 3 list
