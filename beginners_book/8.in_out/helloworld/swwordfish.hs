import Control.Monad

main = do
  input <- getLine
  when (input == "swordfish") $ do
    putStrLn input
