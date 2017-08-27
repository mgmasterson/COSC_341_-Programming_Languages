{-
Michael Masterson
COSC 341
Mini Project
September 20, 2015

Link to project description: http://emunix.emich.edu/~haynes/341/fa15/Projects/haskell1.txt
-}

--2.a Square all numbers solution
squareAll :: Num a -> [a] -> [a]
squareAll [] = []
squareAll (n:ns) = (n*n) : squareAll ns

--2.b Square root solution
--having problem when entering the equation for getting square root
--root :: Num a => [a] -> [a]
--root [] = []
--root (n:ns) = | odd n = root ns2
--              |otherwise = n 'div' 2 :root ns2

--2.c Remove vowel solution
noVowels :: String ->String
noVowels [] = []
noVowels (x:xs)
  |not(x 'elem' "aeiou") = x: noVowels xs
  |otherwise = noVowels xs

--2.d die solution
{-did't have time to complete the die problem but this is what I was thinking
--on how to complete this

Event :: [a] -> EventM
Event = EventM . uniform

d4, d6, d8, z10, d12, d20, d100 :: DieRoll
d4 = Event [1..4]
d6 = Event [1..6]
d8 = Event [1..8]
z10 = Event [0..9]
d10 = Event [1..10]
d12 = Event [1..12]
d20= Event [1..20]
d100 = Event [1..100]
-}

--2.e solution
--having problem entering in variables when running program
cnv :: [String] -> [(String,Integer)]
cnv [] =[]
cnv (k:v:t) = (k, read v) : cnv t
