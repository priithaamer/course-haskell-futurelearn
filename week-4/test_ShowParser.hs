module Main where
import ShowParser (parseShow)

data PersonRecord = MkPersonRecord {
  name :: String,
  address :: Address,
  id :: Integer,
  labels :: [Label]
} deriving (Show)

data Address = MkAddress {
  line1 :: String,
  number :: Integer,
  street :: String,
  town :: String,
  postcode :: String
} deriving (Show)

data Label = Green | Red | Blue | Yellow deriving (Show)

rec1 = MkPersonRecord
  "Ants Antskan"
  (MkAddress "Maxima" 15 "Katusepapi" "Tartu" "51003")
  1
  [Green, Red]

rec2 = MkPersonRecord
  "Hilja Tuli"
  (MkAddress "Selver" 1 "Näituse" "Tartu" "51003")
  2
  [Blue, Yellow]

-- main = putStrLn $ show [rec1, rec2]

rec_str = show [rec1, rec2]
main = putStrLn $ parseShow rec_str
