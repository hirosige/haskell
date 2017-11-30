addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

main :: IO ()
main = do
  let tapple_a = (1.0, 1.0)::(Double, Double)
  let tapple_b = (2.0, 2.0)::(Double, Double)

  print $ addVectors tapple_a tapple_b
