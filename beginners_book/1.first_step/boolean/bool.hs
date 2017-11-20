main :: IO ()
main = do
  let bool1 = True::Bool
  let bool2 = False::Bool
  print (bool1 && bool2)

  let bool3 = True::Bool
  let bool4 = True::Bool
  print (bool3 && bool4)

  let bool5 = False::Bool
  let bool6 = True::Bool
  print (bool5 || bool6)

  let bool7 = False::Bool
  print (not bool7)

  let bool8 = True::Bool
  let bool9 = True::Bool
  print (bool8 && bool9)
