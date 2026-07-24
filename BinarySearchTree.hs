module Main where

data BST 
  = Empty
  | Node Int BST BST
  deriving (Show, Eq)

minimumVal :: BST -> Maybe Int
minimumVal Empty              = Nothing
minimumVal (Node val Empty _) = Just val
minimumVal (Node val left _)  = minimumVal left

maximumVal :: BST -> Maybe Int
maximumVal Empty              = Nothing
maximumVal (Node val _ Empty) = Just val
maximumVal (Node val _ right) = maximumVal right

height :: BST -> Int
height Empty               = 0
height (Node _ left right) = 1 + maximum [height left, height right]

remove :: Int -> BST -> BST
remove x Empty = Empty
remove x (Node current left right)
  | x < current = Node current (remove x left) right
  | x > current = Node current left (remove x right)
  | otherwise   = case (left, right) of 
                  (Empty, Empty)  -> Empty
                  (left, Empty)   -> left
                  (Empty, right)  -> right
                  (left, right)   -> case minimumVal right of 
                                        Just successor -> Node successor left (remove successor right)
                                        Nothing        -> error "Empty value"


inOrder :: BST -> [Int]
inOrder Empty                     = []
inOrder (Node current left right) = inOrder left ++ [current] ++ inOrder right

size :: BST -> Int
size Empty               = 0
size (Node _ left right) = 1 + size left + size right

search :: Int -> BST -> Bool
search _ Empty = False
search x (Node current left right)
  | x == current = True
  | x < current  = search x left
  | otherwise    = search x right

insert :: Int -> BST -> BST
insert val Empty = Node val Empty Empty
insert val (Node current left right)
  | val < current = Node current (insert val left) right
  | val > current = Node current left (insert val right)
  | otherwise     = Node current left right

main :: IO ()
main = undefined