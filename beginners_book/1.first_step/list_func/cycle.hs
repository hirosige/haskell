main :: IO ()
main = do
  let list = [1,2,3]::[Int]
  print $ take 12 (cycle list)

  let number = 10::Int
  print $ replicate 3 number
