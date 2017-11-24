main :: IO ()
main = do
  let list1 = [1,2,3,4,5]::[Int]
  let list2 = [5,5,5,5,5]::[Int]

  print $ zip list1 list2
