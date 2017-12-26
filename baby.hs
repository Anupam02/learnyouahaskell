doubleMe x = x + x
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
  then x
  else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brian = "It's a-me, Conan O'Brien!"

-- access array(list) elements by index
-- conanO'Brian!!2

-- -- adding two lists by ++
-- conanO'Brian ++ "It's a-me, Anupam Patel!"

-- -- accessing first element of list
-- head conanO'Brian

-- --access tail (rest of the ) elements of a list (chopping off head)
-- tail conanO'Brian

-- -- accessing last element of the list
-- last conanO'Brian

-- -- init takes a list and returns everything except its last element
-- init [5, 4, 3, 2, 1]

-- -- length takes a list and returns its length
-- length [5, 4, 3, 2, 2]

-- -- null cheks if a list is empty or not(Boolean)
-- null [1,3,4]
-- null []

-- -- reverse reverses a list.
-- reverse [5, 4, 3, 2, 1]

-- -- take takes number(index + 1) and a list. It extracts that many elements from the beginning of the list.
-- -- these are like slicing in python
-- take 3 [5, 4, 3, 2, 1] -- list[:3] in python
-- take 1 [3, 9 , 3]
-- take 5 [1, 2] -- Here 5 is more than length of list, hence it returns whole list
-- take 0 [4, 5, 5] -- returns emptly list

-- -- drop works in a similar way, only it drops the number of elements from the beginning of the list.
-- -- these are like slicing in python 
-- drop 4 [4,4,4,4,2,3,5,6] -- returns [2,3,5,6], list[4:] in python
-- drop 0 [1,2,3,4] -- drops nothing and returns complete list
-- drop 100 [1,3,4,5] -- as 100 is more than length of the list, It will drop everything and will return an empty list

-- -- Ranges
