true = \x y -> x
false = \x y -> y

-- cond evaluates to true or false
-- cond if_true if_false
--
-- true if_true if_false =
--   (\x y -> x) if_true if_false = if_true
-- false if_true if_false =
--   (\x y -> y) if_true if_false = if_false

-- if cond then if_true else if_false

if_then_else cond if_true if_false
    = cond if_true if_false
