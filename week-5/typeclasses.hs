-- A type for bright colors
data Bright
  = Blue
  | Red
  deriving (Read)

darkBright :: Bright -> Bool
darkBright Blue = True
darkBright Red = False

lightenBright :: Bright -> Bright
lightenBright Blue = Red
lightenBright Red = Red

data Pastel
  = Turquoise
  | Tan
  deriving (Read, Show)

darkPastel :: Pastel -> Bool
darkPastel Turquoise = True
darkPastel Tan = False

lightenPastel :: Pastel -> Pastel
lightenPastel Turquoise = Tan
lightenPastel Tan = Tan

-- Type class
class Color a where
  dark :: a -> Bool
  lighten :: a -> a

-- Define instance of the type class
instance Color Bright where
  dark = darkBright
  lighten = lightenBright

instance Color Pastel where
  dark = darkPastel
  lighten = lightenPastel

instance Show Bright where
  show Blue = "it is blue af"
  show Red = "it is red af"

-- Now in ghci, for example:
-- *Main> Blue
