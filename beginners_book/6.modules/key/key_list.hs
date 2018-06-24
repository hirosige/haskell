findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k, v) -> key == k) $ xs

main :: IO ()
main = do
  let phoneBook = [("betty", "555-2938"), ("betty2", "555-2938")]
  print $ findKey "betty" phoneBook
