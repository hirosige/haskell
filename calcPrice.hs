calcPrice :: Int -> Int -> Int
calcPrice x y = x * y

addTax :: (Fractional a) => a -> a
addTax x = x * 1.05

main = do
    price <- getLine
    qty <- getLine
    print $ addTax (calcPrice (read price :: Int) (read qty :: Int))
