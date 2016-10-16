-- Find the max value in an Int list
maxhelper :: Int -> [Int] -> Int
maxhelper x [] = x
maxhelper x (y:ys) = maxhelper
  (if x > y then x else y) ys

maxfromlist :: [Int] -> Maybe Int
maxfromlist [] = Nothing
maxfromlist (x:xs) = Just (maxhelper x xs)

let inc = (1+)
-- inc 1 = 2
-- inc (Just 1) -- does not work
-- fmap inc (Just 1) = Just 2
-- fmap inc Nothing
