--1.a)

data Palo = Treboles | Corazones | Picas | Diamantes

mismo_palo :: Palo -> Palo -> Bool
mismo_palo Treboles Treboles   = True
mismo_palo Corazones Corazones = True
mismo_palo Picas Picas         = True
mismo_palo Diamantes Diamantes = True
mismo_palo (_)(_)              = False

--1.b) 

data Naipe = Numerada Numero Palo | Rey Palo | Reina Palo | Jota Palo | As Palo 

type Numero = Int

--1.c)

valor_naipe :: Naipe -> Int
valor_naipe (Numerada(n)(p)) = n 
valor_naipe (Rey(p))         = 13
valor_naipe (Reina(p))       = 12
valor_naipe (Jota(p))        = 11
valor_naipe (As(p))          = 14

--1.d)

instance Eq Naipe
    where
        n1==n2 = valor_naipe(n1) == valor_naipe(n2)

instance Ord Naipe 
    where
        n1<=n2 = valor_naipe(n1) <= valor_naipe(n2)

--Ejercicio 2)

--2.a)

solo_numeradas :: [Naipe] -> Palo -> [Numero]
solo_numeradas [] p = []
solo_numeradas (Numerada(n)(Treboles):ns)  p        = n : solo_numeradas ns Treboles
solo_numeradas (Numerada(n)(Corazones):ns) p        = n : solo_numeradas ns Corazones
solo_numeradas (Numerada(n)(Picas):ns)     p        = n : solo_numeradas ns Picas
solo_numeradas (Numerada(n)(Diamantes):ns) p        = n : solo_numeradas ns Diamantes
solo_numeradas (Rey(_):ns)                 p        = solo_numeradas ns p
solo_numeradas (Reina(_):ns)               p        = solo_numeradas ns p
solo_numeradas (Jota(_):ns)                p        = solo_numeradas ns p
solo_numeradas (As(_):ns)                  p        = solo_numeradas ns p

--2.b
--2.c

--Ejercicio 3 

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show

la_menores :: (Num b, Ord b) => ListaAsoc a b -> b -> ListaAsoc a b 
la_menores Vacia _ = Vacia
la_menores (Nodo clave valor xs) x | (x>valor) = (Nodo clave valor (la_menores xs x))
                                   | otherwise = la_menores xs x