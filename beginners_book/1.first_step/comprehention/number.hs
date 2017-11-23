main :: IO ()
main = do
  let list = [1..20]::[Int]

  print [x * 2 | x <- list]
