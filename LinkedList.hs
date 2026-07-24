module Main where

data LinkedList
  = Empty
  | Node Int LinkedList
  deriving (Show, Eq)

remove :: Int -> LinkedList -> LinkedList
remove _ Empty = Empty
remove x (Node current next)
  | x == current = next
  | otherwise    = Node current (remove x next)

getFirst :: LinkedList -> Maybe Int
getFirst Empty            = Nothing
getFirst (Node current _) = Just current

getLast :: LinkedList -> Maybe Int
getLast Empty                               = Nothing
getLast (Node current (Node nextVal Empty)) = Just nextVal
getLast (Node current next)                 = getLast next

getAt :: Int -> LinkedList -> Maybe Int
getAt index _ | index < 0 = Nothing
getAt _ Empty             = Nothing
getAt index (Node current next)
  | index == 0 = Just current
  | otherwise  = getAt (index - 1) next

mapList :: (Int -> Int) -> LinkedList -> LinkedList
mapList f Empty               = Empty
mapList f (Node current next) = Node (f current) (mapList f next)

reverseList :: LinkedList -> LinkedList
reverseList Empty = Empty
reverseList list  = helper list Empty
  where
    helper :: LinkedList -> LinkedList -> LinkedList
    helper Empty newList               = newList
    helper (Node current next) newList = helper next (Node current newList)

filterList :: (Int -> Bool) -> LinkedList -> LinkedList
filterList f Empty = Empty
filterList f (Node current next)
  | f current = Node (current) (filterList f next)
  | otherwise = filterList f next

pop :: LinkedList -> LinkedList
pop Empty         = Empty
pop (Node _ next) = next

push :: Int -> LinkedList -> LinkedList
push x Empty = Node x Empty
push x list  = Node x list

append :: Int -> LinkedList -> LinkedList
append x Empty               = Node x Empty
append x (Node current next) = Node current (append x next)

removeLast :: LinkedList -> LinkedList
removeLast Empty                               = Empty
removeLast (Node current (Node nextVal Empty)) = Node current Empty 
removeLast (Node current next)                 = Node current (removeLast next)

search :: Int -> LinkedList -> Bool
search _ Empty = False
search x (Node current next) 
  | x == current = True
  | otherwise    = search x next

listLength :: LinkedList -> Int
listLength Empty         = 0
listLength (Node _ next) = 1 + listLength next

main :: IO ()
main = undefined