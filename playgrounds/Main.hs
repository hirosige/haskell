module Main(main) where

import Student

main :: IO ()
main = do
  let stu1 = Student "Hiroshige Negishi" Admin
  let stu2 = Student "Hiroshige Negishi" User

  print $ toString stu1
  print $ toString stu2
