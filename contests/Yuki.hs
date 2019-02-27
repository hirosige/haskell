yuki :: Int -> Int -> Int
yuki a b
    | a `mod` 10 == 0 && b `mod` 10 == 0 = (a * b) `div` 10
    | a > 99999999 || b > 99999999       = error "too long"
    | a < -99999999 || b < -99999999     = error "too small"
    | otherwise                          = a * b

main :: IO ()
main = do
    print $ yuki 100 100
    print $ yuki 798 90