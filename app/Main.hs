{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Main where

import Data.Char (chr, digitToInt, intToDigit, ord)
import Data.List (genericIndex, map, replicate, zipWith)
import GHC.Num (minusInteger, plusInteger)
import GHC.Unicode (generalCategory)
import Numeric (showHex)
import Text.Printf (printf)
import qualified Prelude as P hiding ((||))

main :: P.IO ()
main = printLogo

printLogo = do
  P.putStr "                                   _                                          \n"
  P.putStr "                                  (_)                                         \n"
  P.putStr " __      _____     ___ ___   _ __  _   _ __ ___   ___ _ __    _ __ ___   __ _ \n"
  P.putStr " \\ \\ /\\ / / _ \\   / __/ _ \\ | '_ \\| | | '_ ` _ \\ / _ \\ '_ \\  | '_ ` _ \\ / _` |\n"
  P.putStr "  \\ V  V / (_) | | (_|  __/ | | | | | | | | | | |  __/ | | | | | | | | | (_| |\n"
  P.putStr "   \\_/\\_/ \\___/   \\___\\___| |_| |_|_| |_| |_| |_|\\___|_| |_| |_| |_| |_|\\__,_|\n"
  P.putStr "                                                                              "
  P.putStr "                                                                              "

createU8 a = replicate a 0
createU8 _ = []

a || b = a P.++ [b]

a !! b = genericIndex a (b P.- 1)

(++) a = u8Plus a 1

a `u8Plus` b = map (P.+ b) a

a `u8Minus` b = map (P.- b) a

a `u8Multiply` b = map (P.* b) a

a `u8Divide` b = map (P./ b) a

a + b = zipWith (P.+) a b

a - b = zipWith (P.-) a b

a * b = zipWith (P.*) a b

a / b = zipWith (P./) a b

sprint = map chr

unSprint = map ord

test =
  let u8 = sprint P.$ createU8 0 || 72 || 101 || 108 || 108 || 111 || 44 || 32 || 76 || 105 || 116 || 97 || 110 || 103 || 46
   in u8