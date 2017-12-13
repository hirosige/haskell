main :: IO ()
main = do
  print $ takeWhile (/=' ') "elephants know hot to party"
  print $ sum (takeWhile (<100) (filter odd (map (^2) [1..])))
