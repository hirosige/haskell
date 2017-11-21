main :: IO ()
main = do
  let list1 = [3,2,1]::[Int]
  let list2 = [2,1,0]::[Int]
  let list3 = [3,2,1]::[Int]
  let list4 = [2,10,100]::[Int]
  let list5 = [3,4,2]::[Int]
  let list6 = [3,4,3]::[Int]
  let list7 = [3,4,2]::[Int]
  let list8 = [2,4]::[Int]
  let list9 = [3,4,2]::[Int]
  let list10 = [3,4,2]::[Int]

  print $ list1 > list2
  print $ list3 > list4
  print $ list5 < list6
  print $ list7 > list8
  print $ list9 == list10
