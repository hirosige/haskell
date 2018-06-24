data TrafficLight = Red | Yellow | Blue deriving (Show, Eq)

getTraffics :: [TrafficLight]
getTraffics = [Red, Blue, Blue, Yellow, Red]

safe :: TrafficLight -> Bool
safe traffic
  | traffic == Blue  = True
  | otherwise        = False

safeTraffics :: [TrafficLight] -> [Bool]
safeTraffics []      = []
safeTraffics (x:xs)  = safe x : safeTraffics xs

main :: IO ()
main = do
  print $ safeTraffics getTraffics
