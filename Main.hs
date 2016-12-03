module Main (main) where
  import System.Environment
  import System.IO
  --import Compile
  --import Data.Char

  main :: IO ()
  main =
    do
      fn <- getArgs --get the command line arguments.
      fileHandle <- openFile (head fn) ReadMode
      contents <- hGetContents fileHandle
      putStr contents
      
