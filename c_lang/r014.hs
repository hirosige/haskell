type Score = Int
type Grade = String
type Complement = String

grade :: Score -> Maybe Grade
grade score
  | score >= 80  = Just "A"
  | score >= 60  = Just "B"
  | score >= 0   = Just "C"
  | otherwise    = Nothing

congrats :: Grade -> Maybe Complement
congrats gr
  | gr == "A"  = Just (gr ++ "... Excellent!")
  | gr == "B"  = Just (gr ++ "... Cool!")
  | gr == "C"  = Just (gr ++ "... Opps..")
  | otherwise  = Nothing

main :: IO ()
main = do
  print $ grade 90    >>= congrats
  print $ grade 75    >>= congrats
  print $ grade 50    >>= congrats
  print $ grade (-50) >>= congrats
