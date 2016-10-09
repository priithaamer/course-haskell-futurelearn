-- v = (b * b - 4 * a * c) / 2 * a

hello :: String -> String
hello name = "Hello " ++ name

f :: Int -> Int -> Int
f x y = x * y + x * y

-- Lists
-- lst = ["A", "list", "of", "Strings"]

-- Joining a list
-- joined_list = [1, 2] ++ [3, 4]

-- Anonymous function
-- anonymous_function = \x y -> x * y + x * y

-- Higher order function
-- map (\x -> x * 2 + 1) [1..10]

main =
  putStrLn (hello "World!")
