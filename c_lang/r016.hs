getPriceByCode :: Int -> Maybe Double
getPriceByCode 0 = Nothing
getPriceByCode code
  | code > 3  = Nothing
  | otherwise =
    case code of
      1 -> Just 800.0
      2 -> Just 1000.0
      3 -> Just 1500.0

calcTotal :: Double -> Double -> Maybe Double
calcTotal 0.0 _ = Nothing
calcTotal _ 0.0 = Nothing
calcTotal price n
  | n >= 100  = Just (total + bonus)
  | otherwise = Just total
  where total = price * n
        bonus = total * 0.5

main :: IO ()
main = do
  print $ getPriceByCode 1 >>= calcTotal 100.0
  print $ getPriceByCode 2 >>= calcTotal 2.0
  print $ getPriceByCode 3 >>= calcTotal 99.0
  print $ getPriceByCode 4 >>= calcTotal 10000.0
  print $ getPriceByCode 4 >>= calcTotal 0.0
  print $ getPriceByCode 0 >>= calcTotal 0.0
