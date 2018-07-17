data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where
  Red    == Red    = True
  Green  == Green  = True
  Yellow == Yellow = True
  _      == _      = False

main :: IO ()
main = do
  print $ Red == Red
  print $ Green == Green
