data TrafficLight = Red | Yellow | Green

data Tree a = EmptyTree | Node a (Tree a) (Tree a)
  deriving (Show)

class YesNo a where
  yesno :: a -> Bool

instance YesNo Int where
  yesno 0 = False
  yesno _ = True

instance YesNo [a] where
  yesno [] = False
  yesno _ = True

instance YesNo Bool where
  yesno = id

instance YesNo (Maybe a) where
  yesno (Just _) = True
  yesno Nothing = False

instance YesNo (Tree a) where
  yesno EmptyTree = False
  yesno _ = True

instance YesNo TrafficLight where
  yesno Red = False
  yesno _ = True

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
  if yesno yesnoVal
    then yesResult
    else noResult

main :: IO ()
main = do
  print $ yesnoIf [] "Yeah!" "No!"
  print $ yesnoIf [2,3,4] "Yeah!" "No!"
  print $ yesnoIf True "Yeah!" "No!"
  print $ yesnoIf (Just 500) "Yeah!" "No!"
