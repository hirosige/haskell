main :: IO ()
main = do
  let number = 5::Int
  let numbers = [1,2,3,4,5]::[Int]

  print $ number:numbers
