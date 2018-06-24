import Control.Monad()

add :: (Monad m, Num a) => a -> a -> m a
add x y = return (x + y)

sub :: (Monad m, Num a) => a -> a -> m a
sub x y = return (x - y)

main :: IO ()
main = do
  print $ Just 10 >>= add 100 >>= sub 100 >>= add 100
  print $ Just 10 >>= add 100 >>= sub 100 >>= add 100
