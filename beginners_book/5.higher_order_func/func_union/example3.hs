main :: IO ()
main = print $ replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]
