import System.Random

main :: IO ()
main = do
  random (mkStdGen 100) :: (Int, StdGen)
