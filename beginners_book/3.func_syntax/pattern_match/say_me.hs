sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

main :: IO ()
main = do
  print $ sayMe 1
  print $ sayMe 2
  print $ sayMe 3
  print $ sayMe 4
  print $ sayMe 5
  print $ sayMe 6
