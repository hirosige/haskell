lucky :: Int -> String -- Int型を引数に受け取り、String型を返す
lucky 7 = "Lucky!"
lucky x = "Unlucky..."

main :: IO ()
main = do
  let x = 8::Int
  print (lucky 7)
  print (lucky x)
