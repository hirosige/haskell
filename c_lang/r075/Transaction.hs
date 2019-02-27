module Transaction (
  TransactionType,
  Transaction(..),
  Transactions,
  BankNote,
  transactions,
  sort,
  merge
) where

import Sortable
import qualified Client as CL

data TransactionType = Withdrawal | Deposit | Transfer | Purchase
  deriving (Show, Eq, Ord)

data Transaction = Transaction {
  tId :: Int,
  tType :: TransactionType,
  tName :: String,
  tAmount :: Int,
  clientId :: Int
} deriving (Show, Eq, Ord)

type Transactions = [Transaction]
type BankNote = [(CL.Client, Transactions)]

transactions :: Transactions
transactions = [ Transaction 3 Purchase "Amazon.com" 2000 101
               , Transaction 1 Purchase "Amazon.com" 1000 101
               , Transaction 2 Purchase "Amazon.com" 900  101
               ]

instance Sortable Transaction where
  sort []     = []
  sort (x:xs) = sort smrAndEq ++ [x] ++ sort larger
    where isSmallAndEqual :: Transaction -> Bool
          isSmallAndEqual (Transaction ti _ _ _ _) = tId x >= ti

          isLarger :: Transaction -> Bool
          isLarger (Transaction ti _ _ _ _) = tId x < ti

          smrAndEq = filter isSmallAndEqual xs
          larger   = filter isLarger xs

merge :: CL.Clients -> Transactions -> BankNote
merge [] _       = []
merge _ []       = []
merge (x:xs) trs = ((makeEffective x trs4x), trs4x) : merge xs trs
  where trs4x = filter (\a -> CL.cId x == clientId a) trs
        consumeAmount = sum $ map tAmount trs4x
        makeEffective :: CL.Client -> Transactions -> CL.Client
        makeEffective (CL.Client ci cn ca) trs = (CL.Client ci cn (ca - consumeAmount))
