--Laboratorio 2
--Gomez Manuel Agustín

--1.a) Implementa el tipo Carrera como esta definido arriba.
--Nota: Ya tiene aplicado el deriving del ejercicio 2

data Carrera = Matematica | Fisica | Computacion | Astronomia deriving Eq

--1.b) Defini la siguiente funcion, usando pattern matching : titulo :: Carrera -> String 
--que devuelve el nombre completo de la carrera en forma de string.

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica."
titulo Fisica = "Licenciatura en Fisica."
titulo Computacion = "Licenciatura en Ciencias de la Computacion."
titulo Astronomia = "Licenciatura en Astronomia."

--1.c) Definir el tipo NotaBasica con constructores Do, Re, Mi, Fa, Sol, La, Si.
--2.a) Completar la definicion del tipo NotaBasica.

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq,Show,Ord)

--1.d) Programar usando pattern matching la función: cifradoAmericano :: NotaBasica -> Char

cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

--Polimorfismo ad hoc

--3.a) Definir usando polimorfismo ad hoc la función minimoElemento.

minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:xs) = min x (minimoElemento xs)

--3.b) Definir la función minimoElemento' de manera tal que el caso base de la recursión sea el de la lista vacía.

minimoElemento' :: (Bounded a, Ord a) => [a] -> a
minimoElemento' [] = minBound
minimoElemento' [x] = x
minimoElemento' (x:xs) = min x (minimoElemento' xs)

--3.c) Usar la función minimoElemento para determinar la nota más grave de la melodía: [Fa, La, Sol, Re, Fa]

--minimoElemento [Fa, La, Sol, Re, Fa] = Re

--4.a)

--Sinonimos de tipo

type Altura = Int
type NumCamiseta = Int

--Tipos algebraicos sin parametros (aka enumerados)

data Zona = Arco | Defensa | Mediocampo | Delantera deriving (Show, Eq)
data TipoReves = DosManos | UnaMano deriving Show
data Modalidad = Carretera | Pista | Monte | BMX deriving Show
data PiernaHabil = Izquierda | Derecha deriving Show

--Sinonimo

type ManoHabil = PiernaHabil

--Deportista es un tipo algebraico con constructores parametricos

data Deportista = Ajedrecista | Ciclista Modalidad  | Velocista Altura | Tenista TipoReves ManoHabil Altura | Futbolista Zona NumCamiseta PiernaHabil Altura deriving Show


--4.b) El tipo del constructor es:
--     :t Ciclista :: Modalidad -> Deportista


--4.c) Programa la funcion contar_velocistas :: [Deportista] -> Int que dada una lista de deportistas xs, devuelve la cantidad de velocistas que hay dentro de xs.
--Programar contar_velocistas sin usar igualdad, utilizando pattern matching.


contar_velocistas :: [Deportista] -> Int
contar_velocistas [] = 0
contar_velocistas (Velocista(_):xs) = 1 + contar_velocistas xs
contar_velocistas ((_):xs) = contar_velocistas xs
-- contar_velocistas [Velocista(178), Ajedrecista, Velocista(174)] = 2
-- contar_velocistas [Velocista(156), Ciclista(Pista)] = 1
-- contar_velocistas [Velocista(189), Futbolista(Delantera)(10)(Derecha)(170)] = 1


--4.d) Programa la funcion contar_futbolistas :: [Deportista] -> Zona -> Int que dada una lista de deportistas xs, y una zona z, devuelve la cantidad de futbolistas
--incluidos en xs que juegan en la zona z. No usar igualdad, solo pattern matching.

contar_futbolistas :: [Deportista] -> Zona -> Int
contar_futbolistas [] z = 0
contar_futbolistas ((Futbolista (Arco)(n)(p)(a)):xs) Arco             = 1 + contar_futbolistas xs Arco
contar_futbolistas ((Futbolista (Defensa)(n)(p)(a)):xs) Defensa       = 1 + contar_futbolistas xs Defensa
contar_futbolistas ((Futbolista (Mediocampo)(n)(p)(a)):xs) Mediocampo = 1 + contar_futbolistas xs Mediocampo
contar_futbolistas ((Futbolista (Delantera)(n)(p)(a)):xs) Delantera   = 1 + contar_futbolistas xs Delantera
contar_futbolistas ((_):xs) z = contar_futbolistas xs z
--contar_futbolistas [Futbolista(Arco)(1)(Derecha)(180), Ajedrecista] Arco = 1
--contar_futbolistas [Futbolista(Arco)(1)(Derecha)(180), Ajedrecista] Delantera = 0

--4.e) 
--Función auxiliar "pertZona"
pertZona :: Zona -> Deportista -> Bool 
pertZona z (Futbolista(zona)(_)(_)(_)) | (z==zona) = True
pertZona (_)(_) = False

contar_futbolistas' :: [Deportista] -> Zona -> Int
contar_futbolistas' xs z = length (filter (pertZona(z)) xs)
--contar_futbolistas' [Futbolista(Arco)(1)(Derecha)(180), Ajedrecista] Arco = 1
--contar_futbolistas' [Futbolista(Arco)(1)(Derecha)(180), Ajedrecista] Delantera = 0

--5)

sonidoNatural :: NotaBasica -> Int
sonidoNatural Do = 0
sonidoNatural Re = 2
sonidoNatural Mi = 4
sonidoNatural Fa = 5
sonidoNatural Sol = 7
sonidoNatural La = 9
sonidoNatural Si = 11

--5.b)

data Alteracion = Bemol | Natural | Sostenido deriving (Eq, Show) --Bemol = -1; Natural = 0; Sostenido = +1;

--5.c) 

data NotaMusical = Nota NotaBasica Alteracion

--5.d)

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota Do Bemol) = sonidoCromatico (Nota Si Sostenido)
sonidoCromatico (Nota x Sostenido) = (sonidoNatural x) + 1
sonidoCromatico (Nota x Bemol) = (sonidoNatural x) - 1
sonidoCromatico (Nota x Natural) = sonidoNatural x

--sonidoCromatico (Nota(Re)(Bemol)) = 1
--sonidoCromatico (Nota(La)(Sostenido)) = 10

--5.e)

instance Eq NotaMusical
    where
        x==x1 = sonidoCromatico(x) == sonidoCromatico(x1)
    
--Nota(Do)(Bemol) == Nota(Fa)(Sostenido) = False
--Nota(Fa)(Natural) == Nota(Mi)(Sostenido) = True

--5.f)

instance Ord NotaMusical
    where
        x<=x1 = sonidoCromatico(x) <= sonidoCromatico(x1)
    
--Nota(Do)(Bemol) <= Nota(Fa)(Sostenido) = False
--Nota(Re)(Bemol) <= Nota(Fa)(Natural) = True
    


--6.a)

primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento xs = Just (head xs)

--primerElemento [] = Nothing
--primerElemento [2,4,2,5,21,5,52] = Just 2

--7) 

data Cola = VaciaC | Encolada Deportista Cola deriving (Show)

--7.a.1)

atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada d c) = Just (c)

--atender VaciaC = Nothing
--atender (Encolada (Ajedrecista) (Encolada Velocista 125 VaciaC)) = (Encolada Velocista 125 VaciaC)

--7.a.2)

encolar :: Deportista -> Cola -> Cola
encolar nDep VaciaC = (Encolada nDep VaciaC)
encolar nDep (Encolada d c) = Encolada d (encolar nDep c)

--7.a.3

busca :: Cola -> Zona -> Maybe Deportista
busca VaciaC z = Nothing
busca (Encolada (Futbolista(zona)(n)(p)(a)) cola) z | (z==zona) = Just (Futbolista(zona)(n)(p)(a))
                                                    | otherwise = busca cola z
busca (_)(_) = Nothing

--busca Encolada (Futbolista Arco 12 Derecha 183) VaciaC Arco = Just (Futbolista Arco 12 Derecha 183)

--7.b)
-- El otro tipo al cual se parece 'Cola' es la lista(xs), esto se debe que tanto la lista como el tipo de dato 'Cola', tienen dos elementos en común, vacio([]),(VaciaC) y constructor(:),(Encolada).
-- Por lo tanto se comportan de la misma manera.

--8.a) Para instaciar el tipo ListaAsoc para representar la información de una guía telefónica. Primero debemos definir el tipo de datos...

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show

--Luego, debemos instaciar el tipo, se me ocurren dos formas de hacer el tipo...

type GuiaTelefonica = ListaAsoc Int Int

--Otra forma de instaciar el tipo sería con el tipo String primero, para representar el nombre completo y luego Int, para representar el número de la guía telefonica

--type GuiaTelefonica = ListaAsoc String Int

--8.b.1)

--EJEMPLO DE LISTA PARA TODOS LAS FUNCIONES DE ListAsoc

listaXS :: ListaAsoc(String)(Int)
listaXS = Nodo "USER1" 6492 (Nodo "USER2" 3641 Vacia)

la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo a b (xsAsoc)) = 1 + la_long(xsAsoc)
--la_long (Nodo (10::Int) (15) (Nodo 15 15 Vacia)) = 2
--la_long (Nodo('H'::Char)('O')) (Nodo 'L' 'A' Vacia) = 2

--8.b.2)

la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b 
la_concat xs Vacia = xs
la_concat Vacia xs = xs
la_concat (Nodo a b xs) ys = (Nodo a b(la_concat xs ys))
--la_concat (Nodo 1 1 (Nodo 1 2 Vacia))(Nodo 1 3 (Nodo 2 4 Vacia)) = Nodo 1 1 (Nodo 1 2 (Nodo 1 3 (Nodo 2 4 Vacia)))

--8.b.3)
--que agrega un nodo a la lista de asociaciones si la clave no esta en la lista, o actualiza el valor si la clave ya se encontraba.


la_agregar :: Eq a => ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia clave valor = Nodo clave valor Vacia
la_agregar (Nodo a b xs) clave valor | (a==clave) = (Nodo a valor xs)
                                     | otherwise = Nodo a b (la_agregar xs clave valor)


--8.b.4)

la_pares :: ListaAsoc a b -> [(a, b)] --que transforma una lista de asociaciones en una lista de pares clave-valor.
la_pares Vacia = []
la_pares (Nodo a b xs) = (a, b): la_pares xs
--la_pares listaXS = [("USER1",6492),("USER2",3641)]


--8.b.5)

la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia x = Nothing
la_busca (Nodo clave valor xs) x | clave == x = Just valor
                                 | otherwise = la_busca xs x
--la_busca listaXS (USER1::String) = Just 6492



la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar x Vacia = Vacia
la_borrar x (Nodo clave valor xs) | (clave==x) = xs
                                  | otherwise = Nodo clave valor (la_borrar x xs)
--la_borrar ("USER1"::String) listaXS = Nodo "USER2" 3641 Vacia


{-
la_adicionar :: ListaAsoc a b -> b -> ListaAsoc a b
la_adicionar Vacia _ = Vacia
la_adicionar (Nodo clave valor xs) c = (Nodo a (b+c) xs) 
-}