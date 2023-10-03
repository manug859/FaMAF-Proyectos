--Parcial3
--1.a)
data Ropa = Camisa | Pantalon | Pollera | Short

misma_ropa :: Ropa -> Ropa -> Bool
misma_ropa Camisa Camisa = True
misma_ropa Pantalon Pantalon = True
misma_ropa Pollera Pollera = True
misma_ropa Short Short = True
misma_ropa _ _ = False

--1.b)

data Prenda = ConTalle Talle Ropa | TalleUnico Ropa
type Talle = Int

--1.c)

valor_talle :: Prenda -> Int
valor_talle (ConTalle(t)(r)) = t
valor_talle (TalleUnico(r)) = 0

--1.d

instance Eq Prenda
    where
        p1 == p2 = valor_talle(p1) == valor_talle(p2)

instance Ord Prenda
    where
     p1 <= p2 = valor_talle(p1) <= valor_talle(p2) 

--Ejercicio 2.a)

solo_con_talle :: [Prenda] -> Ropa -> [Talle]
solo_con_talle [] _ = []
solo_con_talle (ConTalle(t)(Camisa):xs) Camisa      = t : solo_con_talle xs Camisa
solo_con_talle (ConTalle(t)(Pantalon):xs) Pantalon  = t : solo_con_talle xs Pantalon
solo_con_talle (ConTalle(t)(Pollera):xs) Pollera    = t : solo_con_talle xs Pollera
solo_con_talle (ConTalle(t)(Short):xs) Short        = t : solo_con_talle xs Short
solo_con_talle (TalleUnico(_):xs) r                 = solo_con_talle xs r
solo_con_talle ((_):xs) r                           = solo_con_talle xs r

--2.b) solo_con_talle [ConTalle(12)(Camisa), ConTalle(18)(Pollera), TalleUnico(Short), ConTalle(9)(Camisa)] Camisa
--2.c) [12,9]

--Ejercicio 3 

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show

la_duplica_pares :: (Integral a, Num b, Eq a) => ListaAsoc a b -> ListaAsoc a b
la_duplica_pares Vacia = Vacia
la_duplica_pares (Nodo a b xs) | ((div a 2) == 0) = (Nodo a (b*2) (la_duplica_pares xs))
                               | otherwise = (Nodo a b xs)




                               