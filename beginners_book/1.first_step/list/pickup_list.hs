main :: IO ()
main = do
  let strings = "Steve Buscemi"::String
  print $ strings !! 2

  let numbers = [1,2,3,4,5]::[Int]
  print $ numbers !! 4
