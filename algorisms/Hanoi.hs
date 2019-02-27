move :: (Int, Int, Int, Int) -> [String]
move (k, st, pool, ed)
  | k >= 2    = move(k-1, st, ed, pool) ++ [toString k st pool ed] ++ move(k-1, pool, st, ed)
  | otherwise = [toString k st pool ed]
  where toString :: Int -> Int -> Int -> Int -> String
        toString k st pool ed = "move " ++ show st ++ " to " ++ show ed

main :: IO ()
main = do
  mapM_ putStrLn (move (11,1,2,3))
