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
-- -- maximum takes a list of stuff that can be put in some kind of order and returns the biggest element ( max(list) in python)
-- maximum [4,3,5,6,2] -- returns 6

-- -- minimum returns the smallest
-- minimum [4,3,4,6,7] -- returns 3

-- -- sum takes a list of numbers and returns their sum.
-- -- equivalent to sum(list) in python
-- sum [3,2,5,6] --returns 16

-- -- product takes a list of numbers and returns their product
-- product [6, 2, 1, 2]

-- -- elem tells if a given thing is under the list
-- -- equivalent to x in list in python
-- elem 2 [4,5,6,2,6] -- prefix notation
-- 2 `elem` [4,5,6,2,6] -- infix notation

-- -- ranges
-- ghci> [1..20]
-- [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
-- ghci> ['a'..'A']
-- ""
-- ghci> ['A'..'a']
-- "ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`a"
-- ghci> ['\n'..'9']
-- "\n\v\f\r\SO\SI\DLE\DC1\DC2\DC3\DC4\NAK\SYN\ETB\CAN\EM\SUB\ESC\FS\GS\RS\US !\"#$%&'()*+,-./0123456789"
-- ghci> ['K'..'Z']
-- "KLMNOPQRSTUVWXYZ"
-- ghci>

-- ghci> [2,4..20]
-- [2,4,6,8,10,12,14,16,18,20]
-- ghci> [2,5..20]
-- [2,5,8,11,14,17,20]
-- ghci> [3,6..20]
-- [3,6,9,12,15,18]
-- ghci> 
-- -- While pretty smart, ranges with steps aren't as smart as some people
-- -- expect them to be. You can't do [1,2,4,8,16..100] and expect to get all powers of 2. Firstly because you can only specify one step. And secondly because some sequences that aren't arithmetic are ambiguous if given only by a few of their first terms.

  
-- watch out when using floating point numbers in ranges! Because they
-- are not completely precise (by definition), their use in ranges can
-- yield some pretty funky
-- ghci> [0.1..0.9]
-- [0.1,1.1]
-- ghci> [0.1..1]
-- [0.1,1.1]
-- ghci> [0.1..1.0]
-- [0.1,1.1]
-- ghci> [0.1,0.2..0.8]
-- [0.1,0.2,0.30000000000000004,0.4000000000000001,0.5000000000000001,0.6000000000000001,0.7000000000000001,0.8]
-- ghci> [0.1,0.2..1]
-- [0.1,0.2,0.30000000000000004,0.4000000000000001,0.5000000000000001,0.6000000000000001,0.7000000000000001,0.8,0.9,1.0]
-- ghci> [0.1,0.3..1]
-- [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]

-- -- for reversing a list you can't simply do [10..1] , you have to specify [10,9..1]
-- ghci> [10..1]
-- []
-- ghci> [10,9..1]
-- [10,9,8,7,6,5,4,3,2,1]
-- ghci>

-- -- You can also use ranges to make infinite list by just not specifying
-- -- an upper limit. For an example, suppose we want table of 12 till 10
-- -- terms , one way could be [12,24..12*10] or the other way (lazy evalustion way)
-- -- would be take 10 [12,24..]
-- ghci> [12,24 .. 12*10]
-- [12,24,36,48,60,72,84,96,108,120]
-- ghci> take 10 [12,24..]
-- [12,24,36,48,60,72,84,96,108,120]
-- ghci>


-- -- cycle and repeat
-- -- cycle takes a list and cycles it into an infinite list.If you just
-- -- try to display the result, It would go on forever so you have to slice
-- -- it off somewhere.
-- ghci> take 10 (cycle [1,2,3])
-- [1,2,3,1,2,3,1,2,3,1]
-- ghci> take 10 (cycle "Sahil")
-- "SahilSahil"
-- ghci> take 20 (cycle "Sahil ")
-- "Sahil Sahil Sahil Sa"
-- ghci> take 23 (cycle "Sahil ")
-- "Sahil Sahil Sahil Sahil"
-- ghci>

-- -- repeat takes an element and produces an infinite list of just that
-- -- element.It's like cycling a list with only one element.
-- ghci> take 10 (repeat 10)
-- [10,10,10,10,10,10,10,10,10,10]
-- ghci> take 10 (repeat 'A')
-- "AAAAAAAAAA"

-- -- Although it's simpler to just use the replicate function if you want
-- -- some number of the same element in a list.
-- ghci> replicate 10 10
-- [10,10,10,10,10,10,10,10,10,10]
-- ghci> replicate 3 10
-- [10,10,10]
-- ghci> replicate 10 'A'
-- "AAAAAAAAAA"
-- ghci> replicate 10 3
-- [3,3,3,3,3,3,3,3,3,3]
-- ghci> 

-- -- LIST COMPREHENSION
-- -- A basic comprehension for a set that contains the first ten even
-- -- natural numbers is S = { 2.x | x <- N, x <= 10 }.
-- -- the part before the pipe is called the output function, x is the
-- -- variable, N is the input set and x <= 10 is the predicate.
-- -- That means that the set contains the doubles of all natural
-- -- numbers that satisfy the predicate.
-- -- Python equivalent of list comprehension
-- ghci> [ 2*x | x <- [1..10]]  -- Python equivalent of [ 2*x for x in range(1,11)]
-- [2,4,6,8,10,12,14,16,18,20]

-- -- Now let's add a condition (or a predicate) to that comprehension
-- -- Predicates go after the binding parts and are seperated from them
-- -- by comma. Let's say we want only the elements which , doubled , are
-- -- greater than or equal to 12.
-- ghci> [ x*2 | x <- [1..10], x*2 >= 12]
-- [12,14,16,18,20]


boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- python equivalient [ "BOOM!" if x < 10 else "BANG!" for x in xs if x%2==1]

-- we can include several predicates.If we wanated all numbers from 10 to 20 that are not 13, 15 or 19.


y = [ x | x <- [10..20] , x /= 13, x /= 15, x /= 19]

-- some more examples with examples
ghci> [ x*y | x <- [2,5,10] , y <- [8,10,11]]
[16,20,22,40,50,55,80,100,110]
ghci> [ x*y | x <- [2,5,10] , y <- [8,10,11], x*y > 50 ]
[55,80,100,110]

-- how about a list comprehension that combines a list of adjectives and a
-- list of nouns.
ghci> let nouns = ["pinku","chintu","rinku"]
ghci> let adjectives = ["lazy","grouchy","scheming"]
ghci> [ adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
["lazy pinku","lazy chintu","lazy rinku","grouchy pinku","grouchy chintu","grouchy rinku","scheming pinku","scheming chintu","scheming rinku"]

-- let's write our own version of length !
ghci> let length' xs = sum [ 1 | _ <- xs ]
ghci> length' [1 .. 10]
10
ghci> let length' xs = sum [ 1 | anyvariable <- xs ]
ghci> length' [1,5..100]
25
ghci> length' [1..10]
10

-- some examples for list comprehension on strings
ghci> let removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
ghci> removeNonUppercase "Anupam Patel"
"AP"
ghci> removeNonUppercase "Sahil Virmani"
"SV"
ghci> removeNonUppercase "Saurabh Kapur"
"SK"
ghci> removeNonUppercase "Nikhil Bhatnagar"
"NB"
ghci> removeNonUppercase "Namrata Khanna"
"NK"

-- Nested list comprehension are also possible if you're operating on lists
-- that contain lists. A list contains several lists of numbers. Let's remove
-- all odd numbers without flattening the list.
ghci> let xxs = [[1,2,4,5,3,5,3],[2,4,6,3,6,7],[23,6,7,45,6,4]] -- python equivalent [ [ x for x in xs if x%2==0 ] for xs in xxs]
ghci> [ [ x | x <- xs, even x] | xs <- xxs ]
[[2,4],[2,4,6,6],[6,6,4]]

-- tuples
-- Like lists, tuples can be compared with each other if their components can be
-- compared. Only you can't compare two tuples of different sizes, whereas
-- you can compare two lists of different sizes. Two useful functions that
-- operate on pairs:
-- fst and snd
ghci> fst (8,11)
8
ghci> fst ("Wow",False)
"Wow"
ghci> snd (8,11)
11
ghci> snd("Wow",False)
False
-- NOTE: these functions operate on pairs, They won't work on triples,
-- 4-tuples, 5-tuples, etc We'll go over extracting data from tuples
-- later.

-- ZIP function
-- python equivalent of zip function
ghci> zip [1,2,3,4,5] [1,1,1,1,1]
[(1,1),(2,1),(3,1),(4,1),(5,1)]
ghci> zip [1..5] ["one","two","three","four","five"]
[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]
ghci> zip [1,2,3,4,5]["this","is","incomplete"]
[(1,"this"),(2,"is"),(3,"incomplete")]
ghci> zip [1..] ["apple","bat","cat","dog","elephant","flag","grapes"]
[(1,"apple"),(2,"bat"),(3,"cat"),(4,"dog"),(5,"elephant"),(6,"flag"),(7,"grapes")]

-- Sample solution for a geometric problem, set of sides of a right angled triangle
-- whose perimerter is 24 and sides are less than 10 units.
-- first approach equivalent to
-- in python >>> [(a,b,c) for a in range(1,11) for b in range(1,11) for c in range(1,11) if a+b+c == 24 and a**2 == b**2 + c**2 ]

ghci>[(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10] , a+b+c == 24, a^2 == b^2 + c^2]
[(10,6,8),(10,8,6)]
-- another approach
-- in python >>> [(a,b,c) for a in range(1,11) for b in range(1,a+1) for c in range(1,b+1) if a+b+c == 24 and a**2 == b**2 + c**2 ]

ghci> [(a,b,c) | a <- [1..10], b <- [1..a], c <- [1..b] , a+b+c==24,a^2 == b^2+c^2]
[(10,8,6)]
