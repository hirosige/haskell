main :: IO ()
main = do
  let boom = "BOOM"::String
  let bang = "BANG"::String
  let list = [7..13]::[Int]

  let boomBangs xs = [if x < 10 then boom else bang | x <- xs, odd x]
  print $ boomBangs list
