isBigGang :: Int -> Bool
isBigGang x = x > 9

isBigGang :: Int -> (Bool, String)
isBigGang x (x > 9, "Compared gang size to 9")

applyLog :: (a, String) -> (a -> (b, String)) -> (b, String)
applyLog (x, log) f = let (y, newLog) = f x in (y, log ++ newLog)

applyLog :: (Monoid m) => (a, m) -> (a -> (b, m)) -> (b, m)
applyLog (x, log) f = let (y, newLog) = f x in (y, log `mappend` newLog)

newtype Writer w a = Writer { runWriter :: (a, w)}

instance (Monoid w) -> Monad (Writer w) where
  return x = Writer (x, mempty)
  (Writer (x, v)) >>= f = let (Writer (y, v')) = f x
                           in (y, v `mappend` v`)

writer :: (a, w) -> Writer w a
