fromIntegral :: (Num b, Integral a) => a -> b
length :: [a] -> Int

main :: IO ()
main = print $ fromIntegral (length [1,2,3,4]) + 3.2
