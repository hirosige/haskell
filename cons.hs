data List a = Cons a (List a) | Nil
  deriving(Show)

main :: IO ()
main = do
  print $ Cons "hello" (Cons "Hello2" (Cons "Hello3" Nil))
