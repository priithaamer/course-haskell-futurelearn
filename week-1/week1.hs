-- [1] Implement sign which returns -1, 0 or +1 depending on the sign of the argument
-- use only ifThenElse and < >
sign :: Int -> Int
sign x =
  if x == 0
  then 0
  else
    if x > 0
    then 1
    else -1

-- --expected behaviour
-- sign 5    ==  1
-- sign 0    ==  0
-- sign (-3) == -1

main :: IO ()
main = do
  putStrLn (show (sign 1))
  putStrLn "Hello"

-- --------------------------------------------------------------------------------
--
-- -- [2] Implent middle which returns the median of 3 numbers
-- -- use only max and min - don't use < or >
-- middle :: Int -> Int -> Int -> Int
-- middle x y z = ???
--
-- --expected behaviour
-- middle 1 2 3 == 2
-- middle 2 3 1 == 2
-- middle 3 1 2 == 2
--
-- --------------------------------------------------------------------------------
--
-- -- [3] Implement Heron's formula which finds the area of a triangle from its sides
-- -- see https://en.wikipedia.org/wiki/Heron%27s_formula
-- -- use the obvious let binding
-- area a b c = ???
--
-- --expected behaviour
-- area 3 4 5 == 6
--
-- --------------------------------------------------------------------------------
--
-- -- [4] Implement the trafficLght function that returns a relevant message for each color
-- -- use a case statement
--
-- data Color  = Red  | Orange | Green
--
-- trafficLight :: Color -> String
-- trafficLight c = ???
--
-- --expected behaviour
-- trafficLight Green  == "Go"
-- trafficLight Orange == "Ready"
-- trafficLight Red    == "Stop"
--
-- --------------------------------------------------------------------------------
--
-- -- [5] Implement initials which reduces a list of words to their initials
-- -- use a list comprehension and the head function
-- initials :: [String] -> String
-- initials words = ???
--
-- -- expected behaviour
-- initials ["post", "script"] == "ps"
-- initials ["united", "states", "america"] == "usa"
--
-- --------------------------------------------------------------------------------
--
-- -- [6] Implment hide which converts the letters of a word to asterisks
-- -- use only a list comprehension
-- hide :: String -> String
-- hide w = ???
--
-- -- expected behaviour
-- hide "secret" == "******"
-- hide "out"    == "***"
--
-- --------------------------------------------------------------------------------
--
-- -- [7] Implement 'backwards' which reverses a string
-- -- use a list comprehension and the length, !! functions - don't use reverse!
-- backwards :: String -> String
-- backwards w = ???
--
-- -- expected behaviour
-- backwards "wolf" == "flow"
--
-- --------------------------------------------------------------------------------
--
-- -- [8] Implement 'third' which finds third word in a list
-- -- use only head + tail - don't the !! function
-- third :: [String] -> String
-- third words = ???
--
-- -- expected behaviour
-- third ["mon", "tue", "wed", "thu", "fri"] == "wed"
--
-- --------------------------------------------------------------------------------
--
-- -- [9] Implement 'lastStr' which finds the last string in a list
-- -- use the length and !! functions only - don't use the 'last' function
-- lastStr :: [String] -> String
-- lastStr words = ???
--
-- -- expected behaviour
-- lastStr ["tic", "tac", "toe"] == "toe"
--
-- --------------------------------------------------------------------------------
--
-- -- [10] Implement 'toOnes' which converts a list of words to a list of 1's
-- -- use only a list comprehension
-- toOnes :: [String] -> [Int]
-- toOnes words = ???
--
-- -- expected behaviour
-- toOnes ["tic", "tac", "toe"] == [1, 1, 1]
--
-- --------------------------------------------------------------------------------
--
-- -- [11] Implement 'numWords' which finds the length of a list of words
-- -- use the toOnes (see above) and sum functions - don't use the length function!
-- numWords :: [String] -> Int
-- numWords words = ???
--
-- -- expected behaviour
-- numWords ["tic", "tac", "toe"] == 3
--
-- --------------------------------------------------------------------------------
--
-- -- [12] Implement 'joinWords' which concatenates a words
-- -- use a list comprehension - don't use ++
-- -- hint: use <- twice
-- joinWords :: [String] -> String
-- joinWords words = ???
--
-- -- expected behaviour
-- joinWords ["tic", "tac", "toe"] == "tictactoe"
--
-- --------------------------------------------------------------------------------
--
-- -- [13] Implement ++^ - an alternative implementation of ++
-- -- use joinWords (see above)
-- (++^) :: String -> String -> String
-- (++^) w1 w2 = ???
--
-- -- expected behaviour
-- "tic" ++^ "tac"== "tictac"
--
-- --------------------------------------------------------------------------------
