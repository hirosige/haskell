module Sortable where

class Sortable a where
  sort :: [a] -> [a]
