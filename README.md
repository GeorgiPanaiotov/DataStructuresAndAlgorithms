Various data structures and algorithms implemented in Haskell.

## Towers of Hanoi
The easiest of the bunch. Can be compiled using `ghc -o <program_name> TowersOfHanoi.hs`, or can be ran using `ghci TowersOfHanoi.hs`. Currently there is a **main** function left in, but it can be either overriden, or just completely bypassed through `ghci`. The function itself expects **n** which is the number of disks,
**fromPeg** which is the starting position, **toPeg** which is the end position, and **auxPeg** which is the middle auxilary position.

## Binary Search Tree
The binary search tree has no main function, it is purposefully left as **undefined**, it does however have all the expected functionality implemented. Things like **insert**, **search**, **size**, **inOrder**, **remove**, **height**, **maximumVal**, and **minimumVal**.
- **insert** takes a value n (only integers are supported) and a tree, and returns a new tree with the value
- **search** takes a value int, and a tree, and returns a boolean of whether the value is in the tree or not
- **size** takes a tree, and returns an integer indicating the size of the tree
- **inOrder** takes a tree, and returns a list of ordered integers
- **remove** takes a value n, and a tree, and returns a new tree without the value
- **height** takes a tree, and returns an int indicating the highest point that the tree reaches
- **maximumVal** takes a tree, and returns the maximum value that exists in the tree
- **minimumVal** takes a tree, and returns the mimimum value that exists in the tree

## Linked List
It's a singly linked list, no main function again. It includes all the expected functionality of a Linked List, while also have functionality from **Stacks** and **Queues**.
- **listLength** takes a LinkedList, and returns an integer with the size of the list
- **search** takes a value n, and a LinkedList, and returns a boolean indicating whether the list contains the value n or not
- **removeLast** takes a LinkedList, and returns a new Linked List with the last value removed
- **append** takes a value n, and a LinkedList, and returns a new LinkedList with the value n being appended at the end of the list
- **push** takes a value n, and a LinkedList, and returns a new LinkedList with the value n being inserted at the front of the list
- **pop** takes a LinkedList, and returns a new LinkedList with the first value removed
- **filterList** takes a function that returns a boolean, and LinkedList, and returns a new LinkedList with just the items, that satisfy the boolean. eg `filterList (<4) list` would return a new LinkedList with only values less than **4**
- **reverseList** takes a LinkedList, and returns a new inverted LinkedList. eg `2 -> 3 -> 4` becomes `4 -> 3 -> 2`
- **mapList** takes a function f that returns an integer, and a LinkedList, and returns a new LinkedList with f applied to the entire list. eg `mapList (*2) list` would return a new LinkedList with **\*2** applied to each of the values
- **getAt** takes an integer n, and a LinkedList, and returns an integer which sits at index n
- **getLast** takes a LinkedList, and returns an integer corresponding to the last item in the LinkedList
- **getFirst** takes a LinkedList, and returns an integer corresponding to the first item in the LinkedList
- **toList** takes a LinkedList, and returns a List with all the values
- **remove** takes an integer n, and a LinkedList, and returns a new LinkedList with the value n removed from the list
