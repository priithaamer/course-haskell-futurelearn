-- Recursive definition of length to calculate list length
-- The length of a list can be computed recursively as follows:
my_length :: [a] -> Int
my_length [] = 0
my_length (x:xs) = 1 + length xs
-- x is the head of the list
-- xs is the tail

-- Recursive definition of filter
-- filter is given a predicate (a function that gives a Boolean result) and
-- a list, and returns a list of the elements that satisfy the predicate.
--
-- For example, run this in ghci with
--
--  filter (<5) [3,9,2,12,6,4]
--
my_filter :: (a -> Bool) -> [a] -> [a]
my_filter pred [] = []
my_filter pred (x:xs)
  | pred x    = x : my_filter pred xs
  | otherwise = filter pred xs

-- Recursive definition of map
my_map :: (a -> b) -> [a] -> [b]
my_map _ []     = []
my_map f (x:xs) = f x : my_map f xs

-- Some applications of folds
my_sum xs = foldr (+) 0 xs
-- my_sum [1, 2, 3]

my_product xs = foldr (*) 1 xs

-- We can actually “factor out” the xs
-- that appears at the right of each side of the equation, and write:
-- my_sum2 = foldr (+) 0
-- my_product2 = foldr (*) 1
