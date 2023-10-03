--Practico 1 AyED1
--Gomez Manuel Agustín 

esCero :: Int -> Bool --1)a)
esCero x = x==0
-- esCero 2 = False
-- esCero 0 = True

esPositivo :: Int -> Bool --b)
esPositivo x = x>0
--esPositivo (-5) = False
--esPositivo 2 = True

esVocal :: Char -> Bool --c)
esVocal x = x == 'a' || 'x' == 'e' || 'x' == 'i' || 'x' == 'o' || 'x' == 'u'
--esVocal 'a' = True
--esVocal 'h' = False

valorAbsoluto :: Int -> Int --d)
valorAbsoluto x | (x>0) = x
                | (x<0) = (-x)
--valorAbsoluto 2 = 2
--valorAbsoluto (-2) = 2

paratodo :: [Bool] -> Bool --2)a)
paratodo [] = True
paratodo (x:xs) = x==True && paratodo xs
--paratodo [True,True] = True
--paratodo [False,True] = False

sumatoria :: [Int] -> Int --b)
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs
--sumatoria [2,1,4,5] = 12
--sumatoria [] = 0

productoria :: [Int] -> Int --c)
productoria [] = 1
productoria (x:xs) = x * productoria xs
--productoria [2,5,1] = 10
--productoria [2,5,4] = 40

factorial :: Int -> Int --d)
factorial 0 = 1
factorial x = x * factorial (x-1)
--factorial 5 = 120
--factorial 2 = 2

promedio :: [Int] -> Int --e)
promedio [] = 1
promedio (xs) =  div (sumatoria xs) (length xs)
--promedio [10,8] = 9
--promedio [2,4] = 3

pertenece :: Int -> [Int] -> Bool --3)
pertenece n [] = True
pertenece n (xs) = any (== n) xs
--pertenece 2 [2,4,6] = True
--pertenece 4 [2,4,6] = True
--pertenece 5 [2,4,6] = False

paratodo' :: [a] -> (a -> Bool) -> Bool --4)a)
paratodo' [] f = True
paratodo' (x:xs) f = f x && paratodo' xs f
--paratodo' [2,4,5] esCero = False
--paratodo' [0] esCero = True

existe' :: [a] -> (a -> Bool) -> Bool --b)
existe' [] f = False
existe' (x:xs) f = f x || existe' xs f
--existe' [0,0,1] = True
--existe' [1,1,1] = False

sumatoria' :: [a] -> (a -> Int) -> Int --c)
sumatoria' [] f = 0
sumatoria' (x:xs) f = f x + sumatoria' xs f 
--sumatoria' [-3,5,-45] valorAbsoluto = 53
--sumatoria' [2,5,1] valorAbsoluto = 8

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] f = 1
productoria' (x:xs) f = f x * productoria' xs f 
--productoria [2,4,1] valorAbsoluto = 16
--productoria [-2,4,1] valorAbsoluto = 16

paratodo'' :: [a] -> (a -> Bool) -> Bool --5
paratodo'' xs f = paratodo' xs f
--paratodo'' [2,4,5] esCero = False
--paratodo'' [0] esCero = True

todosPares :: [Int] -> Bool --6)a)
todosPares xs = paratodo' xs even
--todosPares [2,4,8,6,2] = True
--todosPares [2,4,1,2] = False

modulo :: Int -> Int -> Bool--6)b.1)
modulo n x = mod x n == 0
--modulo 2 2 = True
--modulo 1 2 = False

hayMultiplo :: Int -> [Int] -> Bool --6)b)
hayMultiplo n xs = existe' xs (modulo n)
--hayMultiplo 3 [5,4,6] = True
--hayMultiplo 3 [7,4,2] = False

cuadrado :: Int -> Int--6)c.1)
cuadrado x = x^2
--cuadrado 2 = 4
--cuadrado 1 = 1

sumaCuadrados :: Int -> Int --6)c)
sumaCuadrados x = sumatoria' [0..x] cuadrado
--sumaCuadrados 2 = 5
--sumaCudrados 6 = 91

divisor :: Int -> Int -> Bool--6)d.1)
divisor n x = mod n x == 0
--divisor 2 1 = True
--divisor 3 2 = False

existeDivisor :: Int -> [Int] -> Bool--6)d)
existeDivisor n xs = existe' xs (divisor n)
--existeDivisor 2 [6,5,7] = True
--existeDivisor 6 [5,7] = False

esPrimo :: Int -> Bool--6)e)
esPrimo n = (n>1) && not(existeDivisor n [2..n-1])
--esPrimo 2 = True
--esPrimo 3 = True
--esPrimo 4 = False

factorial' :: Int -> Int--6)f)
factorial' n = n * factorial (n-1)
--factorial' 2 = 2
--factorial' 5 = 120

primos :: Int -> Int
primos n | (esPrimo n) == True = n
         | (esPrimo n) == False = 1

multiplicaPrimos :: [Int] -> Int -- 6)g)
multiplicaPrimos xs = productoria' xs primos
--multiplicaPrimos [3,5,7] = 105
--multiplicaPrimos [3,2,7] = 21

fib :: Int -> Int --6)h.1)
fib n | n == 0 = 0
      | n == 1 = 1
      | otherwise = fib (n-1) + fib (n-2)

esFib :: Int -> Bool --6)h)
esFib n = pertenece n (map fib [n..(n+1)])
--esFib 2 = True
--esFib 4 = False

todoFib :: [Int] -> Bool --6)i)
todoFib xs = paratodo' xs esFib
--todoFib [1,2,3,5] = True
--todoFib [1,2,3,4] = False

{- (7)

Las funciones "map" y "filter", son funciones de alto orden y operan de manera distinta.

map: La función map, toma una función "f" y una lista "xs" como entrada y 
devuelve una lista "ys" con los elementos de "xs" con esa función aplicada a cada uno de los elementos de "xs".

EJEMPLO map:

doble :: Int -> Int
doble n = n*2

map doble [1,2,3,4] = [2,4,6,8]

--

filter: La función filter toma una función "f" y una lista "xs" como entrada y 
devuelve una lista "ys" con los elementos "xs" tal que cumplan con la función "f". 

EJEMPLO filter:

esPar :: Int -> Bool
esPar n  = n mod 2 == 0

filter esPar [1,2,3,4,5] = [2,4]

--
La expresión map succ, donde succ n = n+1, hace referencia al número sucesor de cada elemento de la lista.
Entonces:

succ :: Int -> Int
succ n = n+1

map succ [1, -4, 6, 2, -8] = [2, -3, 7, 3, -7]

En este caso la función map toma la función "f" (succ) y la lista "xs" [1, -4, 6, 2, -8] y devuelve la lista "ys", aplicandole "f" (succ) a cada unos de los elementos de "xs".

--

La expresión filter esPositivo xs, toma la función esPositivo :: Int -> Bool
                                                   esPositivo x = x>0
y la lista xs [1, -4, 6, 2, -8] y devuelve la lista "ys", aplicando "f" (esPositivo) a cada uno de los elementos de la lista "xs"
Entonces:

esPositivo :: Int -> Bool
esPositivo x = x>0

filter esPositivo [1, -4, 6, 2, -8] = [1, 6, 2]
-}

--8. Programá una función que dada una lista de números xs, devuelve la lista que resulta de duplicar cada valor de xs.

listaDoble :: [Int] -> [Int] --8)a)
listaDoble [] = []
listaDoble (x:xs) = x*2 : listaDoble xs

doble :: Int -> Int --8)b.1)
doble n = n*2

dobleMap :: [Int] -> [Int] --8)b
dobleMap xs = map doble xs

--9. Programe una función que, dada una lista de números xs, calcule una lista que tenga como elementos aquellos números de xs que son primos.

--a) Definila usando recursión.

sonPrimos :: [Int] -> [Int]
sonPrimos [] = []
sonPrimos (x:xs) | (esPrimo x) == True = x : sonPrimos xs
                  | (esPrimo x) == False = sonPrimos xs

--b)Definila usando la función filter.

sonPrimos' :: [Int] -> [Int]
sonPrimos' xs = filter esPrimo xs

--c)Revisá tu defnición del ejercicio 6g. Cómo podes mejorarla?

mulPrimos :: [Int] -> Int
mulPrimos xs = multiplicaPrimos xs

--10)La función primIgualesA toma un valor y una lista, y calcula el tramo inicial más largo de la lista cuyos elementos son iguales a ese valor.

--Nota: Utilizo 'e' para denotar un elemento cualquiera.

--a)

primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA e [] = []
primIgualesA e (x:xs) | (e == x) = x : primIgualesA e xs
                      | (e == x) == False = []

--b)

primIgualesA' :: Eq a => a -> [a] -> [a]
primIgualesA' e xs = takeWhile (==e) xs

--11)La función primIguales toma una lista y devuelve el mayor tramo inicial de la lista cuyos elementos son todos iguales entre sí.

--a)

primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales (x:xs) | x == head xs = x : primIguales xs
                   | otherwise = x:[]

--b) 

primIguales' :: Eq a => [a] -> [a]
primIguales' xs = primIgualesA' (head xs) xs

-- 12(*) Reescribir todas las funciones del punto 4 utilizando el cuantificador generalizado (sin usar induccion y en una linea por funcion).
-- funcion auxiliar para redefinir las funciones del punto 4.

cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z xs t = foldr op z (map t xs)


paratodoGen :: [a] -> (a -> Bool) -> Bool
paratodoGen xs t = cuantGen (&&) True xs t
--paratodoGen [2,3,4] even = False


existeGen :: [a] -> (a -> Bool) -> Bool
existeGen xs t = cuantGen (||) False xs t
--existeGen [7,8,9] esPrimo = True


sumatoriaGen :: [a] -> (a -> Int) -> Int
sumatoriaGen xs t = cuantGen (+) 0 xs t
--sumatoriaGen [2,3,4] (+2) = 15


productoriaGen :: [a] -> (a -> Int) -> Int
productoriaGen xs t = cuantGen (*) 1 xs t
--productoriaGen [7,8,9] (+3) = 1320
