import Data.Time.Calendar

main :: IO ()
main = do
    let today = fromGregorian 2011 9 3
    print $ addDays 2 today