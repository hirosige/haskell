module Client (
  Client(..),
  clients,
  Clients,
  sort
) where

import Sortable

data Client = Client {
  cId :: Int,
  cName :: String,
  cBalance :: Int
} deriving (Show, Eq, Ord)

type Clients = [Client]

clients :: Clients
clients = [ Client 101 "Hiro" 10000
          , Client 103 "Hiro2" 20000
          , Client 80   "Hiro3" 30000
          , Client 999 "Hiro4" 40000
          ]

instance Sortable Client where
  sort []     = []
  sort (x:xs) = sort smrAndEq ++ [x] ++ sort larger
    where isSmallAndEqual :: Client -> Bool
          isSmallAndEqual (Client ci _ _) = cId x >= ci

          isLarger :: Client -> Bool
          isLarger (Client ci _ _) = cId x < ci

          smrAndEq = filter isSmallAndEqual xs
          larger   = filter isLarger xs
