import Network.HTTP.Simple

main :: IO ()
main = do
  res <- httpLBS "http://google.com"
  print (getResponseBody res)
