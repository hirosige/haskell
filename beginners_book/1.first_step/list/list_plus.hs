main :: IO ()
main = do
  let list_one = [1,2,3,4]::[Integer]
  let list_two = [4,5,6,7]::[Integer]
  let list_together = list_one ++ list_two

  print list_together
