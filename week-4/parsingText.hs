{-
  Run with runhaskell parsingText.hs
-}

import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Expr
import Text.ParserCombinators.Parsec.Language (emptyDef)
import qualified Text.ParserCombinators.Parsec.Token as P

lexer = P.makeTokenParser emptyDef
identifier = P.identifier lexer

data Tag = MkTag String deriving (Show)

parseTag :: Parser Tag
parseTag = do
  char '<'
  x <- identifier
  char '>'
  return (MkTag x)

parseDiv :: Parser Tag
parseDiv = do
  string "<div>"
  return (MkTag "div")

letter_digit :: Parser Char
letter_digit = do
  x <- letter <|> digit
  return x

{-
  The first parser string “bag” matched the b but then failed on the a.
  It has now consumed the b. The second parser string “bog” now tries to
  match b against o, which of course fails.
-}
bag_bog :: Parser String
bag_bog = do
  xs <- string "bag" <|> string "bog"
  return xs

{-
  try — don’t consume input on failed parse
-}
bag_bog_try :: Parser String
bag_bog_try = do
  xs <- try (string "bag") <|> string "bog"
  return xs

{-
  Variable names
-}
varname :: Parser String
varname = do
  x <- letter
  xs <- many (letter <|> digit)
  return (x:xs)

{-
  Expression parsers

  * Arithmetic expressions are complex to parse because of the rules of
  precedence and the arity of the operators.

  * Parsec provides support for expression parsing, so you don’t have to write
  your own expression parser
-}
-- expr_parser = buildExpressionParser optable term <?> "expression"

-- term =  parens expr
--     <|> natural
--     <?> "simple expression"
--
-- optable =
--     [ [prefix "-" negate, prefix "+" id ]
--     , [postfix "++" (+1)]
--     , [binary "*" (*) AssocLeft, binary "/" (div) AssocLeft ]
--     , [binary "+" (+) AssocLeft, binary "-" (-)   AssocLeft ]
--     ]
