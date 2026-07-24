module Main where

hanoi :: Int -> Char -> Char -> Char -> IO ()
hanoi 0 _ _ _ = return ()
hanoi n fromPeg toPeg auxPeg = do
  hanoi (n - 1) fromPeg auxPeg toPeg
  putStrLn ("Disk " ++ show n ++ " moved from " ++ [fromPeg] ++ " to " ++ [toPeg])
  hanoi (n - 1) auxPeg toPeg fromPeg

main :: IO ()
main = hanoi 3 'A' 'C' 'B'