{-
Michael Masterson
COSC 341
Mini Project 2
September 28, 2015

Link to project description:http://emunix.emich.edu/~haynes/341/fa15/Projects/haskell2.txt
-}

--Solution 1
tail' ::[a] ->a
tail' [x] =x
tail' [] error "no puede llamamr a la cola en la lista vacia"
tail' (_:xs) = tail' xs

--Solution 2
product' ::(Num b, Foldable t) => t b -> b
product' xs fold1 (*) 1 xs

--Solution 3
{-
My solution to problem 3. when in ghci throws "Illegal datatype contexy
(use Datatype Contexts): Floating n =>" and will not load rest of program thus
is why it is commented out

data Floating n => Point2 n = Point n n
cityBlock :: Floating n => Point2 n -> Point 2 n -> n
cityBlock (Point2 x1 y1) (Point2 x2 y2) = sqrt (x'*x' + y'*y')
      where
            x' = x1-x2
            y'= y1-y2
-}

--Solution 4
{-
My solution to problem 3. when in ghci throws "Illegal datatype contexy
(use Datatype Contexts): Floating n =>" and will not load rest of program thus
is why it is commented out

data Floating2 n => point3 n = point3 n n
distance :: Floating2 n => point3 n -> point3 n -> n
distance (point3 x1 y1) (point3 x2 y2) = sqrt ((x'*x')^2 + (y'*y')^2)
      where
            x' = x1-x2
            y'= y1-y2
-}

--Solution 5
sum' :: (Integral a) => [a] -> [a] -> [a]
sum' xs ys = zipWidth (+) xs ys
    where add (x,y) =x+y

--Solution 6
rev' :: [a] -> [a]
rev' [] = []
rev' (x:xs) = rev' xs ++ [x]

--Solution 7
{-
My solution to problem 7. When in ghci throws "Illegal datatype context
(use DatatypeContexts) : var a =>" and will not load rest of program thus is why
it is commented out

data var a => Set a = True | False | True a (Set a)

pickIt :: var -> boolean
pickIt c =
++ case c of

    True -> "1"
    False -> "2"
    True  -> "3"
          -> ".. no es valido"
-}

--Solution 8
{-
My solution to 8: gives me a error saying different arguments in
minipro2.hs:76:1-12
minipro2.hs:hs:(77,1)-(78,26)

pack::[a] ->[b] -> [a,b]
pack [] = []
pack xs ys = zipWidth (+) xs ys
      where add (x,y) = x+y

-}
