isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome n
  | half1 == half2 = True
  | otherwise      = False
  where half1 = fst $ splitAt (length n `div` 2) n
        half2 = reverse . tail . snd $ splitAt (length n `div` 2) n

main :: IO ()
main = do
  print $ isPalindrome [1,2,3]
  print $ isPalindrome "madamimadam"
  print $ isPalindrome [1,2,4,8,16,8,4,2,1]
  print $ isPalindrome "トマト"
  print $ isPalindrome "ヤマト"
  print $ isPalindrome "山本山"
