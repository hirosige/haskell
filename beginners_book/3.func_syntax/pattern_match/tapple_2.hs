addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

main :: IO ()
main = do
  let tapple_a = (1.0, 1.0)::(Double, Double)
  let tapple_b = (2.0, 2.0)::(Double, Double)

  print $ addVectors tapple_a tapple_b
