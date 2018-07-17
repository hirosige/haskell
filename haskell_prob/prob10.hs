import Data.List
import Control.Arrow

encode xs = map (length &&& head) (group xs)

main :: IO ()
main = do
  print $ encode "aaaabccaadeeee"
