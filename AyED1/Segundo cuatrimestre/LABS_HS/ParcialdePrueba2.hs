
data Ropa = Camisa | Pantalon | Pollera | Short

misma_ropa :: Ropa -> Ropa -> Bool
misma_ropa Camisa Camisa = True
misma_ropa Pantalon Pantalon = True
misma_ropa Pollera Pollera = True
misma_ropa Short Short = True
misma_ropa _ _ = False

data Prenda = ConTalle Talle Ropa | TalleUnico Ropa
type Talle = Int

valor_talle :: Prenda -> Int
valor_talle (ConTalle(t)(r)) = t
valor_talle (TalleUnico(_)) = 0

instance Eq Prenda
    where
       n1==n2 = valor_talle(n1) == valor_talle(n2) 

instance Ord Prenda
    where
        n1 <= n2 = valor_talle(n1) <= valor_talle(n2)


solo_con_talle :: [Prenda] -> Ropa -> [Talle]
solo_con_talle [] _ = []
solo_con_talle (ConTalle(t)(Camisa):xs) Camisa = t : solo_con_talle xs Camisa
solo_con_talle (ConTalle(t)(Pantalon):xs) Pantalon = t : solo_con_talle xs Pantalon
solo_con_talle (ConTalle(t)(Pollera):xs) Pollera = t : solo_con_talle xs Pollera
solo_con_talle (ConTalle(t)(Short):xs) Short = t : solo_con_talle xs Short
solo_con_talle (TalleUnico(_):xs) r = solo_con_talle xs r
solo_con_talle ((_):xs) r = solo_con_talle xs r

--solo_con_talle [(ConTalle(12)(Camisa)),(ConTalle(2)(Camisa)),(TalleUnico(Pantalon))] Camisa
--[12,2]


data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving Show

la_duplica_pares :: (Integral a, Num b, Eq a) => ListaAsoc a b -> ListaAsoc a b
la_duplica_pares Vacia = Vacia
la_duplica_pares (Nodo a b xs) | ((div a 2) == 0) = (Nodo a (b*2) (la_duplica_pares xs))
                               | otherwise = (Nodo a b xs)

listaXS :: ListaAsoc(Int)(Int)
listaXS = Nodo 01 6492 (Nodo 02 3641 Vacia)
