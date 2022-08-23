module SpeedTester where

import Control.Concurrent
import System.Random
import Text.Printf

test5g = do
  putStr "testing 5g... \n"
  run musics

run (x : xs) = do
  size <- getMusicFileSize :: IO Int
  suffix <- getRandomElement suffixes
  printf "Downloading %s%s, totally %d mb \n" x suffix size
  speed <- getDownloadSpeed :: IO Int
  threadDelay speed
  let secs = fromIntegral speed * 1.0e-6 :: Float
  printf "Successfully downloaded %s%s (%f seconds) \n" x suffix secs
  run xs
run _ = do
  printf "Test Finished, OMG, 5G is so fucking fast!!! \n"

musics =
  [ "Kill You",
    "Lighters",
    "ZOOD",
    "Love the Way You Lie",
    "The Monster",
    "Numb Encore",
    "Kinds Never Die",
    "I Need a Doctor",
    "Lose Yourself",
    "Mockingbird",
    "Beautiful",
    "Not Afraid",
    "Rap God",
    "Phenomenal",
    "Stan",
    "Space Bound",
    "Stan",
    "Guts Over Fear"
  ]

suffixes = [".mp3", ".ogg", ".flac"]

getMusicFileSize = randomRIO (10, 30)

getDownloadSpeed = randomRIO (10000, 50000)

getRandomElement x = do
  let lengthArr = length x
  randomNum <- randomRIO (0, lengthArr - 1) :: IO Int
  return $ x !! randomNum