type PriceCodeGroup = [(Int, String, Double)]
type PriceCode = Int
type Price = Double
type Number = Double

getPriceCodes :: PriceCodeGroup
getPriceCodes = [ (1, "Child", 800.0)
                , (2, "Adult", 1500.0)
                ]

get1st :: (Int, String, Double) -> Int
get1st (code, _, _) = code

get3rd :: (Int, String, Double) -> Double
get3rd (_, _, price) = price

getPrice :: PriceCodeGroup -> PriceCode -> Price
getPrice [] _ = 0
getPrice (x:xs) code
  | get1st x == code  = get3rd x
  | otherwise  = getPrice xs code

getPriceByCode :: PriceCode -> Price
getPriceByCode = getPrice getPriceCodes

calcPrice :: Number -> Price -> Maybe Price
calcPrice x y = return (x * y)

decoNumber :: Price -> Maybe String
decoNumber price = return ("total is : " ++ show price)

main :: IO ()
main = do
  print $ calcPrice 10.0 (getPriceByCode 1) >>= decoNumber
  print $ calcPrice 5.0 (getPrice getPriceCodes 2)
  print $ calcPrice 5.0 (getPrice getPriceCodes 3)
