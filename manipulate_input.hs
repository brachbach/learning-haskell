import System.IO
import qualified Data.Text as T

main = do  
    contents <- readFile "input.txt"  
    putStr (T.unpack ((linesToList contents) !! 0))

linesToList :: [Char] -> [T.Text]
linesToList input = T.splitOn (T.pack "\n") (T.pack input)