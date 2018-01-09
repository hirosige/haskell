import Data.Char

encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

main :: IO ()
main = do
  print $ encode 3 "hey mark"
  print $ encode 5 "please instruct your men"

  print $ decode 3 "kh|#pdun"
  print $ decode 5 "uqjfxj%nsxywzhy%~tzw%rjs"
