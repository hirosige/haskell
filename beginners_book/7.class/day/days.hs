data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
  deriving (Eq, Ord, Show, Read, Bounded, Enum)

main :: IO ()
main = do
  let saturday = read "Saturday" :: Day
  let min = minBound :: Day
  let max = maxBound :: Day

  print Wednesday
  print saturday

  print $ Saturday == Sunday
  print $ Saturday == Saturday
  print $ Saturday > Friday
  print $ Monday `compare` Wednesday
  print min
  print max
