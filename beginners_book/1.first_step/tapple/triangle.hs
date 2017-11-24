main :: IO ()
main = do
  let multiple = 2::Int
  let triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10], a^multiple + b^multiple == c^multiple ]::[(Int,Int,Int)]

  print triples
