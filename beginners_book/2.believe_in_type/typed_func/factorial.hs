factorial :: Integer -> Integer
factorial n = product [1..n]

main :: IO ()
main = print $ factorial 50
