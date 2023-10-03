sumPot :: [Int] -> Int -> Int
sumPot [] y = 0
sumPot (x:xs) y = x + (sumPot xs y) * y

hXs :: [a] -> Bool
hXs [] = False


ghNxs :: Int -> [Int] -> Bool
ghNxs n [] = (n==1)
ghNxs n (x:xs) = (n==1) || ghNxs (n+x) xs


fMxs :: Int -> [Int] -> Bool
fMxs n [] = False
fMxs n (x:xs) = (x==n) || fMxs n xs 

factorial :: Int -> Int --d)
factorial 0 = 1
factorial x = x * factorial (x-1)


h_n :: Int -> Bool
h_n 0 = False

h_gen_n_m :: Int -> Int -> Bool
h_gen_n_m n 0 = False
h_gen_n_m n m = (n==0) || h_gen_n_m (n-1) m
