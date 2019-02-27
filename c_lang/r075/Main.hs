import qualified Client as CL
import qualified Transaction as TR

main :: IO ()
main = do
  let curClients = CL.sort CL.clients
  let curTransactions = TR.sort TR.transactions
  print $ TR.merge curClients curTransactions
