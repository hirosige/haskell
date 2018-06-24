import Data.Char
import Data.List
import Control.Monad.Instances

main :: IO ()
main =
  putStrLn $ fmap (*3) (+100) 1
