tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell [x] = "The list has one element: " ++ show x
tell [x, y] = "The list has two elements : " ++ show x ++ "and" ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

main :: IO ()
main = do
  let list = [1,2,3,4,5]::[Int]
  print $ tell list
