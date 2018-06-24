import System.Environment
import System.Directory
import System.IO
import Control.Exception
import qualified Data.ByteString.Lazy as B

main :: IO ()
main = do
  (fileName1:fileName2:_) <- getArgs
  copy fileName1 fileName2

copy source dest = do
  contents <- B.readFile source
  bracketOnError
    (openTempFile "." "temp")
    (\(tempName, tempHandle) -> do
      hClose tempHandle
      removeFile tempName)

    (\(tempName, tempHandle) -> do
      B.hPutStr tempHandle contents
      hClose tempHandle
      renameFile tempName dest)
-0-098';lkjhgalkjhqz2zwxwx4絵4。０うおｐ「ｌ；’?.,mnbv/*／7ｰ}0124567890／89＊650＋3012*-/=983g4h|３ｇ４ｈ｜
