module Main where

import Network.Wai
import Network.HTTP.Types
import Network.Wai.Handler.Warp (run)
import Data.ByteString

app :: Application
app _ respond = do
    putStrLn "I've done some IO here"
    respond $ responseLBS status200 [("Content-Type", "text/plain")] (singleton "Hello, Web!")

main :: IO ()
main = do
    putStrLn $ "http://192.168.33.10:3000/"
    run 3000 app
