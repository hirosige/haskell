applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
applyMaybe Nothing f = Nothing
applyMaybe (Just x) f = f x

main :: IO ()
main = do
  print $ Just 3 `applyMaybe` \x -> Just (x + 1)
