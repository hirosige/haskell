import Control.Monad

main :: IO ()
main = do
  let f x = [x, -x]
  let g x = [x*3, x*2]
  let h = f <=< g
  print $ h 3
