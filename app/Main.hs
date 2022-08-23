{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module Main where

import Data.Char (chr, digitToInt, intToDigit, ord)
import Data.List (genericIndex)
import GHC.Num (minusInteger, plusInteger)
import GHC.Unicode (generalCategory)
import Numeric (showHex)
import Text.Printf (printf)
import Prelude hiding ((!!), (||))

main :: IO ()
main = printLogo

printLogo = do
  putStr "                                   _                                          \n"
  putStr "                                  (_)                                         \n"
  putStr " __      _____     ___ ___   _ __  _   _ __ ___   ___ _ __    _ __ ___   __ _ \n"
  putStr " \\ \\ /\\ / / _ \\   / __/ _ \\ | '_ \\| | | '_ ` _ \\ / _ \\ '_ \\  | '_ ` _ \\ / _` |\n"
  putStr "  \\ V  V / (_) | | (_|  __/ | | | | | | | | | | |  __/ | | | | | | | | | (_| |\n"
  putStr "   \\_/\\_/ \\___/   \\___\\___| |_| |_|_| |_| |_| |_|\\___|_| |_| |_| |_| |_|\\__,_|\n"
  putStr "                                                                              "
  putStr "                                                                              "

createU8 a = replicate a 0
createU8 _ = []

a || b = a Prelude.++ [b]

a !! b = genericIndex a (b Prelude.- 1)

a ++ b = u8Plus a 1

u8Plus [a] b = map (Prelude.+ b) a

u8Minus [a] b = map (b Prelude.-) a

u8Multiply [a] b = map (Prelude.* b) a

u8Divide [a] b = map (Prelude./ b) a

[a] + [b] = zipWith (Prelude.+) a b

[a] - [b] = zipWith (Prelude.-) a b

[a] * [b] = zipWith (Prelude.*) a b

[a] / [b] = zipWith (Prelude./) a b

sprint = map chr

unSprint = map ord

test =
  let u8 = createU8 10 || 1 || 2 || 3 || 2.0
   in u8