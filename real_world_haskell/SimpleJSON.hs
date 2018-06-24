data JValue = JString String
            | JNumber Double
            | JBool Bool
            | JNull
            | JObject [(String, JValue)]
            | JArray [JValue]
            deriving (Eq, Ord, Show)

main :: IO ()
main = do
  print $ JString "foo"
  print $ JNumber 2.7